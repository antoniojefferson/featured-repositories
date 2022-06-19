Rails.application.routes.draw do
  root 'repositories#index'

  resources :repositories, only: %i[index new show destroy]
end
