class AddImgUrlToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :img_url, :string
  end
end
