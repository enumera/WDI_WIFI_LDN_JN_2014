class RemoveTypeFromUserTypes < ActiveRecord::Migration
  def up
    remove_column :user_types, :type
  end

  def down
    add_column :user_types, :type, :string
  end
end
