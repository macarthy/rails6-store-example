class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.references :basket
      t.references :product
      t.integer :quantity, default: 1, null: false
      t.decimal :cost_when_added, precision: 15, scale: 2, null:false
      t.boolean :in_stock, default: true, null: false
      t.boolean :price_has_changed, default: false, null: false
      t.timestamps

      t.index([:basket_id,:product_id], unique: true)
    end
  end
end
