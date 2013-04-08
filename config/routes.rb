MyChatter::Application.routes.draw do

 get  '/login' => 'sessions#new', :as => :login
 post '/login' => 'sessions#create', :as => :login
 get 'logout' => 'sessions#destroy', :as =>:logout
 get '/chatrooms' => 'rooms#index', :as=> :chat_rooms
 get '/chatrooms/(:id)'=> 'rooms#show', :as=>:chat_room
 post '/parse_message'=>'rooms#sent_message'
 resources :users
 root :to => 'rooms#index'
end
