class RenameColumn < ActiveRecord::Migration[7.1]
  def change
    rename_column :staffs, :name, :staff_name
    rename_column :staffs, :phone, :staff_phone
  end
end
