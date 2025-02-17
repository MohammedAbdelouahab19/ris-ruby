Rails.application.routes.draw do
  devise_for :users, path: 'auth', controllers: {
        sessions: 'auth/sessions'
      }
  root to: "correspondings#index"
  resources :users, only: [:index, :show, :create, :update, :destroy]
  resources :categories, only: [:index, :show, :create, :update, :destroy, :new, :edit]
  resources :cities, only: [:index, :show, :create, :update, :destroy, :new, :edit]
  resources :conventions, only: [:new, :index, :show, :create, :update, :destroy, :new, :edit]
  resources :correspondings, only: [:index, :show, :create, :update, :destroy, :new, :edit]
  resources :organs, only: [:index, :show, :create, :update, :destroy, :new, :edit]
  resources :pathologies, only: [:index, :show, :create, :update, :destroy, :new, :edit]
  resources :pathology_categories, only: [:index, :show, :create, :update, :destroy, :new, :edit]
  resources :pathology_zones, only: [:index, :show, :create, :update, :destroy, :new, :edit]
  resources :patients, only: [:index, :show, :create, :update, :destroy, :new, :edit]
  resources :prescribers, only: [:index, :show, :create, :update, :destroy, :new, :edit]
  resources :reanimators, only: [:index, :show, :create, :update, :destroy, :new, :edit]
  resources :regions, only: [:index, :show, :create, :update, :destroy, :new, :edit]
  resources :reports, only: [:index, :show, :create, :update, :destroy, :new, :edit]
  resources :report_templates, only: [:index, :show, :create, :update, :destroy, :new, :edit]
  resources :resources, only: [:index, :show, :create, :update, :destroy, :new, :edit]
  resources :roles, only: [:index, :show, :create, :update, :destroy, :new, :edit]
  resources :rooms, only: [:index, :show, :create, :update, :destroy, :new, :edit]
  resources :services, only: [:index, :show, :create, :update, :destroy, :new, :edit]
  resources :settings, only: [:index, :show, :create, :update, :destroy, :new, :edit]
  resources :specialities, only: [:index, :show, :create, :update, :destroy, :new, :edit]
  resources :structures, only: [:index, :show, :create, :update, :destroy, :new, :edit]
  resources :tests, only: [:index, :show, :create, :update, :destroy, :new, :edit]
  resources :workspaces, only: [:index, :show, :create, :update, :destroy, :new, :edit]
end
