class AddImageToWifi < ActiveRecord::Migration
  def change
    add_column :wifis, :image, :text
  end
end
