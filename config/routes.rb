MyChatter::Application.routes.draw do

 get  '/login' => 'sessions#new', :as => :login
 post '/login' => 'sessions#create', :as => :login
 get 'logout' => 'sessions#destroy', :as =>:logout
 get '/chatrooms' => 'rooms#index', :as=> :chat_rooms
 get '/chatrooms/(:id)'=> 'rooms#show', :as=>:chat_room, :constraints => { :id => /\d+/ }
 get '/chatrooms/new'=> 'rooms#new', :as=>:new_chat_room
 get '/chatrooms/my'=> 'rooms#rooms', :as=>:my_room
 resources :rooms, :only=>[:create,:edit,:update,:destroy] 
 post '/parse_message'=>'rooms#sent_message'
 resources :users
 root :to => 'rooms#index'
end
