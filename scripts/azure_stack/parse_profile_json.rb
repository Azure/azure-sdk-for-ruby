# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'json'
require 'net/http'
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
config_path = File.expand_path(File.dirname(__FILE__)) + "/../../config/"
config_file = config_path + "azure_stack_config.json"
profiles_file = config_path + "profiles.json"

def parse_json(json_path)
    file = File.open(json_path)
    data = JSON.load(file)
    return data
end

def get_profile_detail(version_data)
    profile_detail = {}
    version_data.each do |k, v|
        content = get_single_version_profile_detail(k, v["json"])
        profile_detail[k] = content
    end
    return profile_detail
end

def process_differences(version, profiles, version_data)
    if not version_data[version].include? "differences" or not version_data[version]["differences"]
        return profiles
    end

    differences = version_data[version]["differences"]
    azure_sdk_arr = profiles["rollup"]["azure_sdk"]
    new_azure_sdk_arr = []

    azure_sdk_arr.each do |item|
        if item["name"].downcase == version.downcase
            new_azure_sdk_arr.push patch_differences(item, differences)
        elsif
            new_azure_sdk_arr.push item
        end
    end

    profiles["rollup"]["azure_sdk"] = new_azure_sdk_arr
    return profiles
end

def patch_differences(item, differences)
    resource_types = item["resourceTypes"]
    differences.each do |service_name, sub_differences|
        ["management", "data"].each do |key|
            if sub_differences.include? key
                sub_differences[key].each do |old_version, new_version|
                    if not new_version.empty?
                        resource_types[service_name][key][new_version] = resource_types[service_name][key][old_version]
                    end
                    resource_types[service_name][key].delete old_version
                end
            end
        end
    end
    item["resourceTypes"] = resource_types
    return item
end

def process_single_version_profile_detail(version, detail, profiles)
    azure_sdk_arr = profiles["rollup"]["azure_sdk"]
    new_azure_sdk_arr = []
    is_new_version = true

    azure_sdk_arr.each do |item|
        if item["name"].downcase == version.downcase
            is_new_version = false
            new_azure_sdk_arr.push convert_profile_format(version, detail)
        elsif
            new_azure_sdk_arr.push item
        end
    end

    if is_new_version
        new_azure_sdk_arr.unshift convert_profile_format(version, detail)
    end

    profiles["rollup"]["azure_sdk"] = new_azure_sdk_arr
    return profiles
end

def write_profiles(profiles, profiles_file)
    File.open(profiles_file, "w") do |f|
        f.write(JSON.pretty_generate(profiles, :indent => "    "))
    end
end

def convert_profile_format(version, detail)
    resource_types = {}
    ["management", "data"].each do |key|
        detail[key].each do |service_name_and_versions|
            service_name_and_versions.each do |service_name, versions|
                if not resource_types.has_key? service_name
                    resource_types[service_name] = {}
                end
                resource_types[service_name][key] = {}
                versions.each do |version|
                    resource_types[service_name][key][version] = ["*"]
                end
            end
        end
    end
    return {"name" => version, "resourceTypes" => resource_types, "output_dir" => "azure_sdk/lib"}
end

def get_single_version_profile_detail(version, profile_json_url)
    puts profile_json_url
    uri = URI profile_json_url
    Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == "https") do |http|
        request = Net::HTTP::Get.new uri
        response = http.request request
        content = parse_response_body response.body
        return content
    end
end

def parse_response_body(response_body)
    mgmt_plane_keys = ["resource-manager", "resourcemanager"]
    data_plane_keys = ["data-plane", "dataplane"]

    mgmt_plane_services = []
    data_plane_services = []

    JSON.load(response_body).each do |k, v|
        if mgmt_plane_keys.include? k.downcase
            v.each do |service_name, versions|
                cnt_service_versions = {service_name => []}
                versions.each do |version, method|
                    cnt_service_versions[service_name].push version
                end
                mgmt_plane_services.push cnt_service_versions
            end
        elsif data_plane_keys.include? k.downcase
            v.each do |service_name, versions|
                cnt_service_versions = {service_name => []}
                versions.each do |version, method|
                    cnt_service_versions[service_name].push version
                end
                data_plane_services.push cnt_service_versions
            end
        end
    end
    return {"management" => mgmt_plane_services, "data" => data_plane_services}
end

if __FILE__ == $0
    if ARGV.length > 0
        config_file = ARGV[0]
    end
    version_data = parse_json config_file
    puts "Getting profile detail ..."
    profile_detail = get_profile_detail version_data

    profile_detail.each do |version, detail|
        puts "Processing version: #{version}"
        profiles = parse_json profiles_file
        profiles = process_single_version_profile_detail(version, detail, profiles)
        profiles = process_differences(version, profiles, version_data)
        write_profiles(profiles, profiles_file)
    end
end