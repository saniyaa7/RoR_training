class CreateBorrowings < ActiveRecord::Migration[7.1]
  def change
    create_table :borrowings do |t|
      t.date :date_borrowed
      t.date :date_return
      t.references :book,foreign_key:true
      t.references :student,foreign_key:true



      t.timestamps
    end
  end
end
