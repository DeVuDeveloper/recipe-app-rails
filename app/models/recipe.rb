class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy

  def self.total(id)
    recipe = Recipe.find(id)
    recipe.recipe_foods.joins(:recipe, :food).sum('price * quantity')
  end

  def self.items(id)
    Recipe.find(id).recipe_foods.count
  end
end
