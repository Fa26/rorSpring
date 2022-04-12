Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/strawberries', to: 'strawberries#create'
  get '/strawberries',to: 'strawberries#index'
  get '/strawberries/new',to: 'strawberries#new' , as: :strawberrie_new
  get '/strawberries/:id',to: 'strawberries#show', as: :strawberrie_show
  get '/strawberries/:id/edit',to: 'strawberries#edit', as: :strawberrie_edit
end
