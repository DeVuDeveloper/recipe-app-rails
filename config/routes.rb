Rails.application.routes.draw do
  get 'shopping/list'
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  devise_for :users

  root 'recipes#index'
  get "/general_shopping_list", to: 'shopping#list'

  resources :recipes, only: %i[index new create destroy show]
  resources :foods, only: %i[index new create destroy show]
  resources :recipe_foods, only: %i[index new create destroy show edit]
end
