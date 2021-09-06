Rails.application.routes.draw do

  resources :stocks
  
  devise_for :admins, path: 'admins', controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations'
  }
  
  devise_scope :admin do
    authenticated :admin do
      namespace :admins do
        get 'dashboard/index', as: :authenticated_root
        patch 'dashboard/:id/update',to:'dashboard#update' , as: :approved
      end
    end
  end

  devise_for :users, path: 'users', controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  devise_scope :user do
    authenticated :user do
      namespace :users do
        get 'dashboard/amzn', as: :authenticated_root
        get 'dashboard/fb'
        get 'dashboard/twtr'
        get 'dashboard/nflx'
        post 'dashboard/amzn',to:'dashboard#buy_amzn', as: :buy
        post 'dashboard/fb',to:'dashboard#buy_fb', as: :buyfb
        post 'dashboard/twtr',to:'dashboard#buy_twtr', as: :buytwtr
        post 'dashboard/nflx',to:'dashboard#buy_nflx', as: :buynflx
      end
    end
  end
  
  devise_scope :broker do
    authenticated :broker do
      namespace :brokers do
        get 'dashboard/amzn', as: :authenticated_root
        get 'dashboard/fb'
        get 'dashboard/twtr'
        get 'dashboard/nflx'
        post 'dashboard/amzn',to:'dashboard#buy_amzn', as: :buy           #this should be sell
        post 'dashboard/fb',to:'dashboard#buy_fb', as: :buyfb             #this should be sell
        post 'dashboard/twtr',to:'dashboard#buy_twtr', as: :buytwtr       #this should be sell
        post 'dashboard/nflx',to:'dashboard#buy_nflx', as: :buynflx       #this should be sell
      end
    end
  end

  devise_for :brokers, path: 'broker', controllers: {
    sessions: 'brokers/sessions',
    registrations: 'brokers/registrations'
  }

  root to: "home#index"
end
