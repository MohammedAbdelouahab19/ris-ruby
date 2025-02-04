Rails.application.routes.draw do
  namespace :api do
    resources :categories, only: [:index, :show, :create, :update, :destroy]
    resources :cities, only: [:index, :show, :create, :update, :destroy]
    resources :conventions, only: [:index, :show, :create, :update, :destroy] do
      collection do
        get 'base', to: 'conventions#base_collection'
      end
    end
  end
end
