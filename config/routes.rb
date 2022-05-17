Rails.application.routes.draw do
  resources :publics
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  devise_for :users
  root 'recipes#index'
  resources :recipes, only: %i[index new create destroy show]
  resources :foods, only: %i[index new create destroy]
  resources :recipe_foods, only: %i[new edit create destroy update]
  resources :publics, only: [:index]

end
