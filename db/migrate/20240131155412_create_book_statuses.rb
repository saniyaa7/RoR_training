class CreateBookStatuses < ActiveRecord::Migration[7.1]
  def change
    create_table :book_statuses do |t|
      t.string :status_name
     
      t.references :book,foreign_key: true
      t.timestamps
    end
  end
end
