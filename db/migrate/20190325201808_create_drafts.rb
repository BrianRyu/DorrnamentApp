class CreateDrafts < ActiveRecord::Migration[5.2]
  def change
    create_table :drafts do |t|
      t.belongs_to :player, foreign_key: true
      t.belongs_to :team, foreign_key: true

      t.timestamps
    end
  end
end
