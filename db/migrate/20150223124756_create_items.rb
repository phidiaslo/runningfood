class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, limit: 140, null: false
      t.text :description, limit: 300, null: false
      t.decimal :price, precision: 12, scale: 2, default: 0.00, null: false
      t.references :restaurant, index: true

      t.timestamps null: false
    end
    add_foreign_key :items, :restaurants
  end
end
