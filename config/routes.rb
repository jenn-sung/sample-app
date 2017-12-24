Rails.application.routes.draw do
  get '/items' => 'items#index'
  get '/items/:id' => 'items#show'
  post '/items' => 'items#create'

end
