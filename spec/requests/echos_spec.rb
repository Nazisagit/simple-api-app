require 'rails_helper'

RSpec.describe "Echos", type: :request do
  describe "POST /create" do
    context "when a valid JSON is passed" do
      let(:valid_json) do
        { game: "Mobile Legends", gamerID: "GYUTDTE", points: 20 }.to_json
      end
      let(:headers) do
        { "CONTENT_TYPE" => "application/json" }
      end

      it do
        post echo_path, params: valid_json, headers: headers
        expect(parsed_json_response).to eq(JSON.parse(valid_json))
      end
    end

    context "when an invalid JSON is passed" do
      let(:invalid_json) do
        '{"game": "Mobile Legends", "points": 20'
      end
      let(:headers) do
        { "CONTENT_TYPE" => "application/json" }
      end

      it do
        post echo_path, params: invalid_json, headers: headers
        expect(parsed_json_response["error"]).to eq("Invalid JSON format")
      end
    end
  end
end
