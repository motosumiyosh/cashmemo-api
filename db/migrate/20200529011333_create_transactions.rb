class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.integer :after_balance
      t.integer :amount
      t.string :content
      t.integer :large_item
      t.integer :small_item

      t.timestamps
    end
  end
end
