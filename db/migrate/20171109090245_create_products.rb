class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.integer :product_type_id
      t.string :permalink

      t.timestamps
    end
  end
end
