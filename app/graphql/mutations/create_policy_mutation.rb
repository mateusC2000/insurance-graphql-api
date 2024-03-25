# frozen_string_literal: true

module Mutations
  class CreatePolicyMutation < ::Mutations::BaseMutation
    argument :attributes, Mutations::Inputs::PolicyInput, required: true

    field :policy, Types::PolicyType, null: true

    def resolve(attributes:)
      policy_json = attributes.to_json
      
      Publisher.publish('policy.created', policy_json)
      { policy: 'ok' }
    end
  end
end
