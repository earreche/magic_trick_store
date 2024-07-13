# frozen_string_literal: true

# == Schema Information
#
# Table name: trick_categories
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class TrickCategory < ApplicationRecord
  has_many :tricks, dependent: :nullify

  validates :name, presence: true
end
