module Api
  class Request
    class << self
      def where(resource_path, query = {}, options = {})
        response, status = get_json(resource_path, query)
        status == 200 ? response : errors(response)
      end
      def get(id)
        response, status = get_json(id)
        status == 200 ? response : errors(response)
      end
      def post_to(resource_path, params = {}, options = {"Content-Type" => "application/json"})
        response, status = post_api(resource_path, params, options)
        status == 200 ? response : errors(response)
      end
      def errors(response)
        error = { errors: { status: response["status"], message: response["message"] } }
        response.merge(error)
      end
      def get_json(root_path, query = {})
        query_string = query.map{|k,v| "#{k}=#{v}"}.join("&")
        path = query.empty?? root_path : "#{root_path}?#{query_string}"
        response = api.get(path)
        [JSON.parse(response.body), response.status]
      end
      def post_api(resource_path, params = {}, options = {"Content-Type" => "application/json"})
        response = api.post(resource_path, params, options)
        [JSON.parse(response.body), response.status]
      end
      def api
        Connection.api
      end
    end
  end
end