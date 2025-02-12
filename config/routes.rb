Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'auth/sessions'
      }
  root to: "convention#index"
  # resources :users, only: [:index, :show, :create, :update, :destroy]
  resources :categories, only: [:index, :show, :create, :update, :destroy]
  resources :cities, only: [:index, :show, :create, :update, :destroy]
  resources :conventions, only: [:index, :show, :create, :update, :destroy]
  resources :correspondings, only: [:index, :show, :create, :update, :destroy]
  resources :organs, only: [:index, :show, :create, :update, :destroy]
  resources :pathologies, only: [:index, :show, :create, :update, :destroy]
  resources :pathology_categories, only: [:index, :show, :create, :update, :destroy]
  resources :pathology_zones, only: [:index, :show, :create, :update, :destroy]
  resources :patients, only: [:index, :show, :create, :update, :destroy]
  resources :prescribers, only: [:index, :show, :create, :update, :destroy]
  resources :reanimators, only: [:index, :show, :create, :update, :destroy]
  resources :regions, only: [:index, :show, :create, :update, :destroy]
  resources :reports, only: [:index, :show, :create, :update, :destroy]
  resources :report_templates, only: [:index, :show, :create, :update, :destroy]
  resources :resources, only: [:index, :show, :create, :update, :destroy]
  resources :roles, only: [:index, :show, :create, :update, :destroy]
  resources :rooms, only: [:index, :show, :create, :update, :destroy]
  resources :services, only: [:index, :show, :create, :update, :destroy]
  resources :settings, only: [:index, :show, :create, :update, :destroy]
  resources :specialities, only: [:index, :show, :create, :update, :destroy]
  resources :structures, only: [:index, :show, :create, :update, :destroy]
  resources :tests, only: [:index, :show, :create, :update, :destroy]
  resources :workspaces, only: [:index, :show, :create, :update, :destroy]
end
