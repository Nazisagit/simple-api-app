class BaseApiError < StandardError
  attr_reader :status

  def initialize(message = nil, status: :internal_server_error)
    super(message)
    @status = status
  end
end

class InvalidJsonError < BaseApiError
  def initialize(message = "Invalid JSON format")
    super(message, status: :bad_request)
  end
end
