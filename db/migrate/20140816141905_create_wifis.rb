class CreateWifis < ActiveRecord::Migration
  def change
    create_table :wifis do |t|
      t.string :name
      t.string :password
      t.boolean :free_or_paid
      t.string :share_scope
      t.string :business_name
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :postcode
      t.string :country
      t.string :phone

      t.timestamps
    end
  end
end
