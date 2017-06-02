Rails.application.routes.draw do
  	get 'pages/index'
 	get '/auth/:provider/callback', to: 'session#create'
 	delete '/logout', to: 'session#destroy'
 	root to: 'pages#index'
end
