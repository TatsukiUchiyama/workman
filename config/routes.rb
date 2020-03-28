Rails.application.routes.draw do
  devise_for :users
  get 'corporations/index'
  root "corporations#index"
  resources :users do
    collection do
      get 'unique' 
    end
  end
  resources :addcorporation_members
  resources :corporations do
    resources :projects do
      resources :project_messages
    end
  end
end
