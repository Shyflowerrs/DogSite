Rails.application.routes.draw do
  # get 'dogs/index'
  # get 'dogs/show'
  # get "home/show"
  # resources :dogs, only: %i[index show] do
  #   collection do
  #     get "search"
  #   end
  # end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root "home#index"
  get "about", to: "about#index"
  # resources :dogs
  # get "dogs/index"
  get "dogs/search", to: "dogs#search"
  resources :dogs, only: %i[index show] do
    #   collection do
    #     get "search"
    #   end
  end
end
