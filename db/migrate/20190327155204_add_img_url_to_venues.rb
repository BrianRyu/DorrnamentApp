class AddImgUrlToVenues < ActiveRecord::Migration[5.2]
  def change
    add_column :venues, :img_url, :string
  end
end
