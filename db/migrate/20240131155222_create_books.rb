class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :book_title
      t.string :book_name
      t.string :publisher
      t.string :author
      t.timestamps
    end
  end
end
