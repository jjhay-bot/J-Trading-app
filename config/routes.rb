Rails.application.routes.draw do
  resources :items
  resources :comments
  # get 'home/index'

  devise_for :users, path: 'users', controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  devise_for :admins, path: 'admins', controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations'
  }

  devise_scope :user do
    authenticated :user do
      namespace :users do
        get 'dashboard/index', as: :authenticated_root
      end
    end
  end

  devise_scope :admin do
    authenticated :admin do
      namespace :admins do
        get 'dashboard/index', as: :authenticated_root
        patch 'dashboard/:id/update',to:'dashboard#update' , as: :approved
      end
    end
  end
  
  devise_scope :broker do
    authenticated :broker do
      namespace :brokers do
        get 'dashboard/index', as: :authenticated_root
      end
    end
  end

  devise_for :brokers, path: 'broker', controllers: {
    sessions: 'brokers/sessions',
    registrations: 'brokers/registrations'
  }

  root to: "home#index"
end
