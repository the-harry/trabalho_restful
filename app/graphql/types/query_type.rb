# frozen_string_literal: true

class Types::QueryType < Types::BaseObject
  # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
  include GraphQL::Types::Relay::HasNodeField
  include GraphQL::Types::Relay::HasNodesField

  field :trabalhos, [::Types::TrabalhoType], null: false

  def trabalhos
    context[:current_user].trabalhos
  end
end
