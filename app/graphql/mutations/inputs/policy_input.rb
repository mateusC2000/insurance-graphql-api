# frozen_string_literal: true

module Mutations
  module Inputs
    class PolicyInput < ::Types::BaseInputObject
      argument :insured, Mutations::Inputs::InsuredInput
      argument :vehicle, Mutations::Inputs::VehicleInput
    end
  end
end
