Rails.application.routes.draw do
  devise_for :users
  get 'corporations/index'
  root "corporations#index"
  resources :users
  resources :corporations do
    resources :projects
  end
end
