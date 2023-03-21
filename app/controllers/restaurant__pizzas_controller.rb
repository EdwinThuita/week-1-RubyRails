class RestaurantPizzasController < ApplicationController

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index
        restaurant_pizzas = RestaurantPizza.all
        render json: restaurant_pizzas
    end
    def create
        restaurant_pizzas = RestaurantPizza.create(create_restaurant_pizza)
        render json: restaurant_pizzas.pizza, status: :created
    end
    private
    def create_restaurant_pizzas
        params.permit(:price, :pizza_id, :restaurant_id)
    end
    def render_unprocessable_entity(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end
end