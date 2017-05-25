Rails.application.routes.draw do
  namespace :api do
    resources :passwords, only: :index    
  end

  devise_for :admins
  root                'static_pages#home'
  get 'about'     =>  'static_pages#about'
  get 'projects'  =>  'static_pages#projects'
  get 'freelance' =>  'static_pages#freelance'
  get 'open'      =>  'static_pages#open_source'

  resources :posts, only: [:new, :create, :show] do
    resources :comments
  end
end
