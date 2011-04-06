FbGraphSample::Application.routes.draw do
  resources :logs

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
