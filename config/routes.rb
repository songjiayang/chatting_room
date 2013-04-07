MyChatter::Application.routes.draw do

 get  '/login' => 'sessions#new', :as => :login
 post '/login' => 'sessions#create', :as => :login
 get '/chatrooms' => 'rooms#index', :as=> :chat_rooms
 get '/chatrooms/(:id)'=> 'rooms#show', :as=>:chat_room
 root :to => 'rooms#index'
end
