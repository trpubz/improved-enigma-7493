class DishIngredientsController < ApplicationController
  def create
    DishIngredient.create!(dish_id: params[:dish_id], ingredient_id: params[:ingredient_id])

    redirect_to dish_path(params[:dish_id])
  end

  def destroy
    DishIngredient.find_by(dish_id: params[:dish_id], ingredient_id: params[:ingredient_id]).destroy!

    redirect_to dish_path(params[:dish_id])
  end
end
