class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :about
      t.string :subdomain
      t.string :slug

      t.timestamps null: false
    end
    add_index :restaurants, :slug, unique: true
  end
end
