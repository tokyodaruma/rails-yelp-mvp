Rails.application.routes.draw do
  resources :restaurants, only: %i[index new show] do
    resources :reviews, only: %i[new create]
  end
end
