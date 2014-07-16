DeviseRolesUserManagement::Application.routes.draw do
  

  #match ':controller(/:action(/:id))'
  resources :views do
      collection do
          get 'cala'
          #get 'puede agregar la que quiera así'
      end

  end

  resources :fields


  resources :venues


  resources :companies


  resources :companies
  #devise_for :users, :controllers => {:registrations => "registrations"} 
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  devise_scope :user do
    get '/login' => 'devise/sessions#new'
    get '/logout' => 'devise/sessions#destroy'
  end
  resources :token_authentications, :only => [:create, :destroy]
  resources :user, :controller => "user"
  root :to => "dashboard#index"
  get "welcome/index"
  get "welcome/test"
  get "welcome/sample_ajax"

end
