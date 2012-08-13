Mytechhelp::Application.routes.draw do
  devise_for :admins

  authenticate :admin do
    namespace :admins do
      match '/' => 'admin#index'
      resources :banners
      resources :brands
      resources :campaigns
      resources :experts
      resources :pages
      resources :plans
      resources :services
      resources :testimonials
    end
  end
  match '/lab(/:action)', controller: :lab

  root :to => 'application#index'
end
