class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :number
      t.string :ip_address
      t.string :email
      t.string :state
      t.integer :user_id
      t.integer :bill_address_id
      t.integer :ship_address_id
      t.integer :coupon_id
      t.timestamps
    end
  end
end
