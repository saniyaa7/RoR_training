class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.string :transaction_name
      t.datetime :transaction_date
      t.string :transaction_amount
      t.references :student, foreign_key: true
      t.references :borrowing, foreign_key: true
      t.timestamps
    end
  end
end
