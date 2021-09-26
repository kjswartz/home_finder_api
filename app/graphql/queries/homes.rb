# frozen_string_literal: true

module Queries
  class Homes < Queries::BaseQuery
    type [Types::HomeType], null: false
    argument :search, String, required: false

    def resolve(search: nil)
      homes = ::Home.all

      if search.present?

      end

      homes
    end
  end
end
