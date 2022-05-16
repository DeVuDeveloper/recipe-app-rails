Rails.application.routes.draw do
  resources :recipes, only: %i[index new create destroy show]
end
