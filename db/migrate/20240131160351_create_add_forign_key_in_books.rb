class CreateAddForignKeyInBooks < ActiveRecord::Migration[7.1]
  def change
    add_reference :books, :book_status, foreign_key: true
  end

  def down
    remove_reference :books, :book_status, foreign_key: true
  end
end
