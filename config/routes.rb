Finalversion::Application.routes.draw do
  resources :products

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'visitors#new'

  match "contact", :to=>"contacts#contact", :via=> :get, :as=> :contact
  match "home", :to=>"visitors#new", :via=> :get, :as=> :visitor

  match 'products', :to=>'products#index', :via=> :get, :as=> :products_display

  match 'about' , :to =>'contacts#about' ,:via => :get, :as => :about
  match 'services' , :to =>'contacts#services' ,:via => :get, :as => :services

  match 'other' , :to =>'contacts#other' ,:via => :get, :as => :other
  match 'blog' , :to =>'contacts#blog' ,:via => :get, :as => :blog


end
