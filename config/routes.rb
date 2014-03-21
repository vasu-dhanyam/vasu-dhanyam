Finalversion::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'visitors#new'

  match "contact", :to=>"contacts#contact", :via=> :get, :as=> :contact
  match "home", :to=>"visitors#new", :via=> :get, :as=> :visitor

end
