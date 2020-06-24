# frozen_string_literal: true

class TransactionsChanges < ActiveRecord::Migration[6.0]
  def change
    rename_column :transactions, :small_item, :small_category
    rename_column :transactions, :large_item, :large_category
    add_column :transactions, :deleted_at, :datetime
  end
end
