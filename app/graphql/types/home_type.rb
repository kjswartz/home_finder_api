# frozen_string_literal: true

module Types
  class HomeType < Types::BaseObject
    field :id, ID, null: false
    field :address, String, null: false
    field :city, String, null: true
    field :state, String, null: true
    field :zip, String, null: true
    field :beds, String, null: true
    field :baths, String, null: true
    field :year_built, String, null: true
    field :status, String, null: true
    field :url, String, null: true
    field :property_type, String, null: true

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
