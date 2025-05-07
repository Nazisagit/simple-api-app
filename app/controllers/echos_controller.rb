class EchosController < ApplicationController
  def create
    body = request.body.read

    raise InvalidJsonError unless JsonValidator.valid?(body)

    render json: body, status: :ok
  end
end
