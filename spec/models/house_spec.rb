require 'rails_helper'

RSpec.describe House, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      house = House.new
      expect(house).not_to be_valid
    end

    it "is valid with a name" do
      house = House.new(name: "House A")
      expect(house).to be_valid
    end
  end

  describe "associations" do
    it "has many rooms" do
      house = House.new(name: "House A")
      room = house.rooms.build

      expect(house.rooms).to include(room)
      expect(room.house).to eq(house)
    end
  end
end