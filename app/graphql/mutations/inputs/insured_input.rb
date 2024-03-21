# frozen_string_literal: true

module Mutations
  module Inputs
    class InsuredInput < ::Types::BaseInputObject
      argument :name, String, required: true
      argument :cpf,  String, required: true
    end
  end
end
