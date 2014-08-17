class AddFirstAndLastAndNameAndDobAndSexAndOccupationAndPositionAndImageAndRoleAndPhoneToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first, :string
    add_column :users, :last, :string
    add_column :users, :dob, :date
    add_column :users, :sex, :boolean
    add_column :users, :occupation, :string
    add_column :users, :position, :string
    add_column :users, :image, :text
    add_column :users, :role, :string
    add_column :users, :phone, :integer
  end
end
