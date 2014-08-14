
BerzaPoslova::Application.routes.draw do

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"

  post '/ajax/sum' => 'problems#ajax_sum'
  post 'uvecaj' => 'comments#uvecaj'

  resources :sessions
  resources :comments

  resources :problems do
    resources :comments, :only => [:create]
  end

  resources :users
  root :to => "home#index"



end