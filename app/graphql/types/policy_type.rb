# frozen_string_literal: true

module Types
  class PolicyType < ::Types::BaseObject
    field :number, String, null: false
    field :emission_date, String, null: false
    field :coverage_end_date, String, null: false
    field :insured, Types::InsuredType, null: false
    field :vehicle, Types::VehicleType, null: false
  end
end
