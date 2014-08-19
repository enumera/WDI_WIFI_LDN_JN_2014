class CreateUserWifis < ActiveRecord::Migration
  def change

      create_table :users_wifis, id: false do |t|
      t.belongs_to :wifi
      t.belongs_to :user
    end
  end
end
