class CreateBaskets < ActiveRecord::Migration[6.1]
  def change
    create_table :baskets do |t|
      t.references :customer
      t.datetime :last_visited_at, null: false, default: -> { 'CURRENT_TIMESTAMP' }
      t.integer :item_count, null: false, default: 0
      t.decimal :sub_total, precision: 15, scale: 2
      t.timestamps
    end
  end
end
