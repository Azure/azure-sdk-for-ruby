require 'sinatra'
require 'azure/service_runtime/role_environment'

include Azure::ServiceRuntime

# get the resolved http endpoint if available
port, address = nil
if RoleEnvironment.is_available?
  http_endpoint = RoleEnvironment.current_role_instance.endpoints["HttpIn"]
  port = http_endpoint.port
  address = http_endpoint.address
else
  port = 9000
  address = "127.0.0.1"
end

set :server, :thin
set :port, port
set :bind, address

get '/' do
  if RoleEnvironment.is_available?
    erb :index, :locals => { :deployment => RoleEnvironment.deployment, :current_role_instance => RoleEnvironment.current_role_instance, :roles => RoleEnvironment.roles }
  else
    erb :error
  end
end

post '/request_recycle' do
  RoleEnvironment.request_recycle
end

get '/role_instance/:id' do
  role_instance = nil
  current_role_instance = RoleEnvironment.current_role_instance
  if params[:id] == current_role_instance.id
    role_instance = current_role_instance
  else
    role_instance = RoleEnvironment.roles.values.map(&:instances).map(&:values).reduce(:+).select {|instance| instance.id == params[:id]}.first
  end
  erb :role_instance, :locals => { :role_instance => role_instance }
end

get '/test' do
  erb :test
end

post '/test' do
  code_return_value = eval(params[:code])
  "The code returned: #{code_return_value}"
end
