class CreateCartItems < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_items do |t|
      t.integer :user_id
      t.integer :cart_id
      t.integer :variant_id,                    :null => false
      t.integer :quantity,    :default => 1
      t.boolean :active,      :default => true
      t.timestamps
    end
  end
end
