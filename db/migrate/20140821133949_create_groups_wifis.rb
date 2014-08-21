class CreateGroupsWifis < ActiveRecord::Migration
  def change
    create_table :groups_wifis, id: false do |t|
      t.belongs_to :group
      t.belongs_to :wifi
  end
end


end
