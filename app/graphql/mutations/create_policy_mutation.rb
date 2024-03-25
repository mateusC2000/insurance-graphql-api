# frozen_string_literal: true

module Mutations
  class CreatePolicyMutation < ::Mutations::BaseMutation
    argument :attributes, Mutations::Inputs::PolicyInput, required: true

    field :policy, Types::PolicyType, null: true

    def resolve(attributes:)
      policy_json = attributes.to_json
      #publicar mensagem
      'OK'
    end
  end
end
