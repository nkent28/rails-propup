Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get :pages, to: "pages#dashboard", as: :dashborad

  resources :props do
    resources :bookings, only: [:new, :create]
  end
  resources :reviews, only: [:destroy, :edit]
  resources :chatrooms, only:[:destroy]

  resources :chatrooms, only: [:index, :show, :new, :create] do
    resources :messages, only: [:create, :show]
  end

  resources :bookings, except: [:new, :create] do
    resources :reviews, only: [:new, :create, :edit, :update, :index]
  end
end

