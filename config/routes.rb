Rails.application.routes.draw do
 get '/assignDrone/:id' , to: "orderdetails#assignDrone", as: "button"

  resources :people
  resources :orders
  resources :orderdetails 
  	
  resources :products
  resources :drones
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
 