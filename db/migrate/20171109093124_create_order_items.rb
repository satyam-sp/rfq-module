class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.decimal :price,      :precision => 8, :scale => 2
      t.decimal :total,      :precision => 8, :scale => 2
      t.integer :order_id,    :null => false
      t.integer :variant_id,  :null => false
      t.string :state,        :null => false
      t.integer :tax_rate_id
      t.timestamps
    end
  end
end
