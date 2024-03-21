# frozen_string_literal: true

module Types
  class VehicleType < ::Types::BaseObject
    field :brand, String
    field :model, String
    field :plate, String
    field :year, String
  end
end
