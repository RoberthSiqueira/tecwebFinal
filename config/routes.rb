Rails.application.routes.draw do
  	get 'pages/index'
 	get '/auth/:provider/callback', to: 'session#create'
 	delete '/logout', to: 'session#destroy'
 	put '/update/:id', to: 'pages#update', as: 'update'
 	root to: 'pages#index'
end
