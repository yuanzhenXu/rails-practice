class CreateVariants < ActiveRecord::Migration[5.0]
  def change
    create_table :variants do |t|
      t.integer :product_id, comment: '商品'
      t.decimal :price, precision: 8, scale: 2
      t.string :size

      t.timestamps
    end
  end
end
