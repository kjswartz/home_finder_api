# frozen_string_literal: true

class Home < ApplicationRecord
  validates :address, presence: true
  validates :address, uniqueness: true
end
