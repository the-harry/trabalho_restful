# frozen_string_literal: true

class Types::BaseEdge < Types::BaseObject
  # add `node` and `cursor` fields, as well as `node_type(...)` override
  include GraphQL::Types::Relay::EdgeBehaviors
end
