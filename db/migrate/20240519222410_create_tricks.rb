# frozen_string_literal: true

class CreateTricks < ActiveRecord::Migration[7.0]
  def change
    create_table :tricks do |t|
      t.string :title, null: false
      t.string :description
      t.decimal :amount, precision: 8, scale: 2, null: false, default: 0
      t.integer :currency, null: false, default: 0
      t.integer :state, null: false, default: 'pending'
      t.references :trick_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
