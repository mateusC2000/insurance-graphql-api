# frozen_string_literal: true

module Types
  class PolicyType < ::Types::BaseObject
    field :number, String
    field :emission_date, String
    field :coverage_end_date, String
    field :insured, Types::InsuredType
    field :vehicle, Types::VehicleType
  end
end
