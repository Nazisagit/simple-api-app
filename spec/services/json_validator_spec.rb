require 'rails_helper'

RSpec.describe JsonValidator, type: :service do
  describe "#valid?" do
    context "when a valid string is passed" do
      let(:valid_json) do
        '{"game": "Mobile Legends", "gamerID": "GYUTDTE", "points": 20}'
      end

      it { expect(JsonValidator.valid?(valid_json)).to eq(true) }
    end

    context "when an invalid string is passed" do
      let(:invalid_json) do
        '{"game": "Mobile Legends", "gamerID": "GYUTDTE", "points": 20'
      end

      it { expect(JsonValidator.valid?(invalid_json)).to eq(false) }
    end
  end
end
