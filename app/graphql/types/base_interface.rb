# frozen_string_literal: true

module Types::BaseInterface
  include GraphQL::Schema::Interface
  edge_type_class(Types::BaseEdge)
  connection_type_class(Types::BaseConnection)

  field_class Types::BaseField
end
