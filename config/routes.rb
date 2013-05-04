RailsBase::Application.routes.draw do
  #devise_for :admins

  #authenticate :admin do
  #  namespace :admins do
  #    match '/' => 'admin#index'
  #    resources :banners
  #    resources :brands
  #    resources :campaigns
  #    resources :experts
  #    resources :pages
  #    resources :plans
  #    resources :services
  #    resources :testimonials
  #  end
  #end
  #match '/ui(/:action)', controller: :ui

  #match '/test' => redirect {|ps,request| 'http://asdf.com/?' + ps.to_query }

# PERSONAL TOOLS
  get '/todo' => 'todo#index', as: :todo

# EXPERIMENTS
  get '/basic-auth' => 'basic_auth#index', as: :basic_auth
  get '/basic-auth/private' => 'basic_auth#private', as: :basic_auth_private

  get '/ruby-enum' => 'pseudo_enumerable#index', as: :pseudo_enumerable_test
  get '/refactor/:name' => 'refactor#show', as: :show_refactor
  root :to => 'pages#index'
end
