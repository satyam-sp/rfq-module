class CreateVariants < ActiveRecord::Migration[5.1]
  def change
    create_table :variants do |t|
      t.string :name
      t.decimal :price
      t.decimal :cost
      t.integer :product_id
      t.string :color

      t.timestamps
    end
  end
end
