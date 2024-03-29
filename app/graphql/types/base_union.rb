# frozen_string_literal: true

class Types::BaseUnion < GraphQL::Schema::Union
  edge_type_class(Types::BaseEdge)
  connection_type_class(Types::BaseConnection)
end
