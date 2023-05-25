Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/restaurants', to: 'restaurants#index'
  get '/restaurants/new', to: 'restaurants#new'
  post '/restaurants', to: 'restaurants#create'
  get '/restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  delete "restaurants/:id", to: "restaurants#destroy"

  # Reviews
  get '/restaurants/:id/reviews/new', to: 'reviews#new', as: 'new_restaurant_review'
  post '/restaurants/:id/reviews', to: 'reviews#create', as: 'restaurant_reviews'
end
