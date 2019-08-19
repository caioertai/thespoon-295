class RestaurantsController < ApplicationController
  RESTAURANTS = {
    1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    2 => { name: "Sushi Samba", address: "City, London", category: "japanese" },
    3 => { name: "Kitaro", address: "City, São Luís", category: "japanese" }
  }

  def index
    if params[:food_type].blank?
      @restaurants = RESTAURANTS 
    else
      @restaurants = RESTAURANTS.select { |id, restaurant| restaurant[:category] == params[:food_type] }
    end
  end

  def create
    raise
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
  end
  
end
