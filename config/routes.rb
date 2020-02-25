Rails.application.routes.draw do
  get 'projects/new'

  get 'projects/index'

  devise_for :users
  get 'corporations/index'
  root "corporations#index"
  resources :users
  resources :corporations do
    resources :projects
  end
end
