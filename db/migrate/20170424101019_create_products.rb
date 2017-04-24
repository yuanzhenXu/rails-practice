class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name, comment: '商品名称'
      t.decimal :price, comment: '商品价格'
      t.text :description

      t.timestamps
    end
  end
end
