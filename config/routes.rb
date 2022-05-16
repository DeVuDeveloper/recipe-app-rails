Rails.application.routes.draw do
  resources :recipes, only: %i[index new create destroy show]
  resources :foods, only: %i[index new create destroy show]
  resources :recipe_foods, only: %i[index new create destroy show edit]
end
