# frozen_string_literal: true

class AddNullFalseToUser < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :password_digest, :string, null: false
    change_column :users, :email, :string, null: false
  end
end
