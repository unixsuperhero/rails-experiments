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

  get '/ruby-enum' => 'pseudo_enumerable#index', as: :pseudo_enumerable_test
  get '/refactor' => 'refactor#index', as: :refactoring_patterns
  get '/refactor/:name' => 'refactor#show', as: :show_refactor
  root :to => 'pages#index'
end
