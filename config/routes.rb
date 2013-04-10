MyChatter::Application.routes.draw do

 get  '/login' => 'sessions#new', :as => :login
 post '/login' => 'sessions#create', :as => :login
 get 'logout' => 'sessions#destroy', :as =>:logout
 get '/chatrooms' => 'rooms#index', :as=> :chat_rooms
 get '/chatrooms/(:id)'=> 'rooms#show', :as=>:chat_room, :constraints => { :id => /\d+/ }
 get '/chatrooms/new'=> 'rooms#new', :as=>:new_chat_room
 get '/chatrooms/my'=> 'rooms#rooms', :as=>:my_room
 get '/q'=> 'rooms#index'
 resources :rooms, :only=>[:create,:edit,:update,:destroy] 
 post '/parse_message'=>'rooms#sent_message'
 post '/online_user' => 'rooms#online_user'
 post '/fav_or_unfav' => 'users#fav_or_unfav'
 resources :users
 root :to => 'rooms#index'
end
