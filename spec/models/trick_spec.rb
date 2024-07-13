# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Trick, type: :model do
  subject { build(:trick) }

  describe 'associations' do
    it { is_expected.to belong_to(:trick_category) }
  end

  describe 'enums' do
    it { is_expected.to define_enum_for(:state).with_values(%i[pending published]) }
    it { is_expected.to define_enum_for(:currency).with_values(%i[usd eur uyu]) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:amount) }
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:trick_category) }
  end
end
