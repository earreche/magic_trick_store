# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TrickCategory, type: :model do
  subject { build(:trick_category) }

  describe 'associations' do
    it { is_expected.to have_many(:tricks) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
