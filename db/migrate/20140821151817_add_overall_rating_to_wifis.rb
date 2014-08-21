class AddOverallRatingToWifis < ActiveRecord::Migration
  def change
    add_column :wifis, :overall_rating, :integer
  end
end
