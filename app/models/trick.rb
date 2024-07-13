# frozen_string_literal: true

# == Schema Information
#
# Table name: tricks
#
#  id                :integer          not null, primary key
#  amount            :integer          default(0), not null
#  currency          :integer          default(0), not null
#  description       :string
#  state             :integer          not null
#  title             :string           not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  trick_category_id :integer          not null
#
# Indexes
#
#  index_tricks_on_trick_category_id  (trick_category_id)
#
# Foreign Keys
#
#  trick_category_id  (trick_category_id => trick_categories.id)
#
class Trick < ApplicationRecord
  belongs_to :trick_category

  enum state: { pending: 0, published: 1 }
  enum currency: { usd: 0, eur: 1, uyu: 2 }

  validates :amount, :title, presence: true
end
