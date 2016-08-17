Rails.application.routes.draw do
  devise_for :admins
  root                'static_pages#home'
  get 'about'     =>  'static_pages#about'
  get 'projects'  =>  'static_pages#projects'

  resources :posts, only: [:new, :create, :show] do
    resources :comments
  end
end
