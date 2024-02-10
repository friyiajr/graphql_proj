# frozen_string_literal: true

module Types
  class TodoType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :message, String
    field :completed, Boolean
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :author_id, Integer, null: false
  end
end
