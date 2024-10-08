# frozen_string_literal: true

module Queries
  class Homes < Queries::BaseQuery
    type [Types::HomeType], null: false
    argument :search, String, required: false

    def resolve(search: nil)
      search.present? ? ::Home.where('address ~* ?', search) : ::Home.all
    end
  end
end
