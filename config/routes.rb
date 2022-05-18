Rails.application.routes.draw do
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  devise_for :users
  get 'shopping/list'
  get "/general_shopping_list", to: 'shopping#list'
  resources :publics, only: %i[index]
  resources :recipes, only: %i[index new create destroy show]
  resources :foods, only: %i[index new create destroy show]
  resources :recipe_foods, only: %i[index new create destroy show edit]
  root 'publics#index'
end
