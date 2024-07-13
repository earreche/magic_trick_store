# frozen_string_literal: true

class CreateTrickCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :trick_categories do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
