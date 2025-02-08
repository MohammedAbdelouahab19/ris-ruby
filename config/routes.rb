Rails.application.routes.draw do
  namespace do
    resources :categories, only: [:index, :show, :create, :update, :destroy]
    resources :cities, only: [:index, :show, :create, :update, :destroy]
    resources :conventions, only: [:index, :show, :create, :update, :destroy] 
    resources :correspondings, only: [:index, :show, :create, :update, :destroy] 
  end
end
