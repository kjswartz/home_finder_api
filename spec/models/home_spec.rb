# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Home, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :address }
    it { is_expected.to validate_uniqueness_of :address }
  end
end
