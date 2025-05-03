module ApiHelper
  def parsed_json_response
    JSON.parse(response.body)
  end
end
