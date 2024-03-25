# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :policies, [Types::PolicyType], null: true
    field :policy, Types::PolicyType, null: true do
      argument :id, String, required: true
    end

    def policies
      response = Faraday.get('http://insurance-service:3000/v1/policies')
      data = JSON.parse(response.body)
    end

    def policy(id:)
      response = Faraday.get("http://insurance-service:3000/v1/policies/#{id}")
      data = JSON.parse(response.body)
    end
  end
end
