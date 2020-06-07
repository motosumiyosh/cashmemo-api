# frozen_string_literal: true

class DbChanges < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :amount, :integer
    remove_column :transactions, :after_balance, :integer
    add_column :transactions, :transaction_type, :integer
  end
end
