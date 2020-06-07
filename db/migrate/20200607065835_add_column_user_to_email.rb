# frozen_string_literal: true

class AddColumnUserToEmail < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :email, :string
  end
end
