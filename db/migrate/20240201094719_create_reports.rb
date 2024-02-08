class CreateReports < ActiveRecord::Migration[7.1]
  def change
    create_table :reports do |t|
      t.datetime :report_date
      t.references :transaction, foreign_key: true
      t.references :borrowing, foreign_key: true
      t.timestamps
    end
  end
end
