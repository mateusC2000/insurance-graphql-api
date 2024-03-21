# frozen_string_literal: true

module Mutations
  module Inputs
    class VehicleInput < ::Types::BaseInputObject
      argument :brand, String, required: true
      argument :model, String, required: true
      argument :plate, String, required: true
      argument :year,  String, required: true
    end
  end
end
