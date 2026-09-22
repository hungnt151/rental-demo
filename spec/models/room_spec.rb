require 'rails_helper'

RSpec.describe Room, type: :model do
  describe "associations" do
    it "belongs to a house" do
      house = House.new(name: "House A")
      room = Room.new(house: house)

      expect(room.house).to eq(house)
    end

    it "is invalid without a house" do
      room = Room.new

      expect(room).not_to be_valid
    end
  end
end
