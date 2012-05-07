DivePanda::Application.routes.draw do

  resources :users

  resources :items
  resources :dives

  get "pages/home"
  get "pages/contact"
  get "pages/about"
  get "pages/terms"
  get "pages/privacy"
  
  resource :facebook, :except => :create do
    get :callback, :to => :create
  end

  resource :dashboard, :only => :show
  resource :canvas, :only => [:show, :create]
  resource :profile, :only => :show
  resource :timeline, :only => [:show, :create]
  resource :subscription, :only => [:show, :create]

  root :to => 'top#index'
end
