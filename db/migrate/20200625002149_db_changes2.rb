# frozen_string_literal: true

class DbChanges2 < ActiveRecord::Migration[6.0]
  def change
    remove_column :transactions, :small_category, :integer
    remove_column :users, :token, :string
    rename_column :transactions, :large_category, :category
  end
end
