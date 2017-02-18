Rails.application.routes.draw do
  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:index, :show, :create] do
      resources :channels, only: [:show]
    end

    resources :messages, only: [:create]
    
    resource :session, only: [:create, :destroy, :show]
  end
end
