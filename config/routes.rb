Rails.application.routes.draw do
  # get 'reviews/new'
  # get 'reviews/create'
  # get 'restaurants/index'
  # get 'restaurants/show'
  # get 'restaurants/new'
  # get 'restaurants/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :restaurants, only: %i[index show new create] do
    resources :reviews, only: %i[create]
  end
end


# Before refactoring
# A visitor can see the list of all restaurants.
# GET "restaurants"

# A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
# GET "restaurants/new"
# POST "restaurants"

# A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
# GET "restaurants/38"

# A visitor can add a new review to a restaurant
# GET "restaurants/38/reviews/new"
# POST "restaurants/38/reviews"


# After refactoring
# GET "restaurants"
# GET "restaurants/new"
# GET "restaurants/38"
# POST "restaurants"
# POST "restaurants/38/reviews"

# we got rid of the route GET "restaurants/38/reviews/new"
