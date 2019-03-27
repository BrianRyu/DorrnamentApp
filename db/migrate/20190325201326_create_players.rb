class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.date :birth_date
      t.string :gender
      t.date :start_date 

      t.timestamps
    end
  end
end
