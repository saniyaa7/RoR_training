class CreateStaffs < ActiveRecord::Migration[7.1]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :phone
      t.references :book, foreign_key: true
      t.timestamps
    end
  end
end
