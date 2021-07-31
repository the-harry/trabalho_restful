# frozen_string_literal: true

class Types::TrabalhoType < Types::BaseObject
  field :id, ID, null: false
  field :title, String, null: true
  field :url, String, null: true
  field :aluno_id, Integer, null: false
  field :created_at, GraphQL::Types::ISO8601DateTime, null: false
  field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
end
