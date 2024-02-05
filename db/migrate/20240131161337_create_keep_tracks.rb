class CreateKeepTracks < ActiveRecord::Migration[7.1]
  def change
    create_table :keep_tracks do |t|
      t.references :student, foreign_key: true
      t.references :staff, foreign_key: true
      t.timestamps
    end
  end
end
