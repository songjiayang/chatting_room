MyChatter::Application.routes.draw do
 get  '/login' => 'sessions#new', :as => :login
 post '/login' => 'sessions#create', :as => :login
 get  '/chatroom' => 'chats#room', :as => :chat
 root :to => 'chats#room'
end
