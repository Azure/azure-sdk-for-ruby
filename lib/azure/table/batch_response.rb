#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
module Azure
  module Table
    module BatchResponse
      def self.parse(data)
        context = { 
          :lines => data.lines.to_a,
          :index=> 0,
          :responses => []
        }

        find(context) { |c| batch_boundary c }
        find(context) { |c| batch_headers c }
        
        while(find(context){ |c| changeset_boundary_or_end c } == :boundary)
          find(context) { |c| changeset_headers c }
          find(context) { |c| response c }
          find(context) { |c| response_headers c }
          find(context) { |c| response_body c }
        end

        context[:responses]
      end

      def self.find(context, &block)
        while(context[:index] < context[:lines].length)
          result = block.call(context)
          return result if result
          context[:index] +=1
        end
      end

      def self.response_body(context)
        end_of_body = nil
        end_of_body = changeset_boundary_or_end(context.dup.merge!({:index=>context[:index] + 1})) if context[:index] < (context[:lines].length - 1)

        if end_of_body
          context[:responses].last[:body] ||= ""
          context[:responses].last[:body] << current_line(context)
          return context[:responses].last[:body]
        else 
          context[:responses].last[:body] ||= ""
          context[:responses].last[:body] << current_line(context)
          return nil
        end
      end

      def self.response_headers(context)
        match = /(.*): (.*)/.match(current_line(context))

        if context[:responses].last[:headers] and not match
          context[:index] += 1
          return context[:responses].last[:headers]
        elsif match
          context[:responses].last[:headers] ||= {}
          context[:responses].last[:headers][match[1].downcase] = match[2].strip
          return nil
        else
          return nil
        end
      end

      def self.response(context)
        match = /HTTP\/1.1 (\d*) (.*)/.match(current_line(context))
        return nil unless match
        response = {:status_code => match[1], :message => match[2] }
        context[:responses].push response
      end
      
      def self.changeset_headers(context)
        current_line(context).strip ==  ''
      end

      def self.changeset_boundary_or_end(context)
        match_boundary = /--changesetresponse_(.*)/.match(current_line(context))
        match_end = /--changesetresponse_(.*)--/.match(current_line(context))

        (match_boundary and not match_end) ? :boundary : (match_end ? :end : nil)
      end

      def self.batch_headers(context)
        match = /(.*): (.*)/.match(current_line(context))

        if context[:batch_headers] and not match
          return context[:batch_headers]
        elsif match
          context[:batch_headers] ||= {}
          context[:batch_headers][match[1].downcase] = match[2]
          return nil
        else
          return nil
        end
      end

      def self.batch_boundary(context)
        match = /--batchresponse_(.*)/.match(current_line(context))
        match ? match[1] : nil
      end
      
      def self.current_line(context)
        context[:lines][context[:index]]
      end
    end
  end
end
