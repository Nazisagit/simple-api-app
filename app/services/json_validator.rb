class JsonValidator
  def self.valid?(json_string)
    JSON.parse(json_string)
    true
  rescue JSON::ParserError
    false
  end
end
