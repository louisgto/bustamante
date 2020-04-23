Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  get 'artist',   to: 'pages#artist',     as: :artist
  get 'workshop', to: 'pages#workshop',   as: :workshop
  get 'contact',  to: 'messages#new',     as: :contact
  get 'libertad', to: 'pages#dashboard',  as: :dashboard

  resources :artworks
  resources :messages, except: :new
end
