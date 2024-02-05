class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.integer :age
      t.string :address
      t.string :phone
      t.timestamps
    end
  end
end
