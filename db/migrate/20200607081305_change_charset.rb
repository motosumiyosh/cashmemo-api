# frozen_string_literal: true

class ChangeCharset < ActiveRecord::Migration[6.0]
  def change
    ActiveRecord::Base.connection.tables.each do |table|
      sql = "ALTER TABLE #{table} CONVERT TO CHARACTER SET utf8mb4"
      ActiveRecord::Base.connection.execute(sql)
    end
  end
end
