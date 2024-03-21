# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :policy, Types::PolicyType, null: true do
      argument :id, String, required: true
    end

    def policy(id:)
      response = Faraday.get("http://insurance-service:3000/v1/policies/#{id}")
      data = JSON.parse(response.body)

      Types::PolicyType.new(
        number: data['number'],
        emission_date: data['emission_date'],
        coverage_end_date: data['coverage_end_date'],
        insured: insured(data['insured']),
        vehicle: vehicle(data['vehicle'])
      )
    end

    def insured(insured)
      Types::InsuredType.new(
        name: insured['name'],
        cpf: insured['cpf']
      )
    end

    def vehicle(vehicle)
      Types::VehicleType.new(
        brand: vehicle['brand'],
        model: vehicle['model'],
        year: vehicle['year'],
        plate: vehicle['plate']
      )
    end
  end
end
