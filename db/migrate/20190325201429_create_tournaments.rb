class CreateTournaments < ActiveRecord::Migration[5.2]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.date :date
      t.integer :venue_id

      t.timestamps
    end
  end
end
