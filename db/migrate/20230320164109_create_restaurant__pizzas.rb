class CreateRestaurantPizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurant__pizzas do |t|
      t.integer :pizza_id
      t.integer :price
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
