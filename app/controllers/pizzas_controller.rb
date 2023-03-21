class PizzasController < ApplicationController

    def index
      pizzas = Pizza.all
      render json: pizzas, include: :restaurant
    end
    def show
        pizza = find_pizzas
        render json: pizza, include: :restaurant
    end

private
def find_pizzas
    pizza = Pizza.find(params[:id])
end
    
end