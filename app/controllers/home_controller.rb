class HomeController < ApplicationController
  def index
    @dogs = Dog.order("name DESC")
    @quote = Quote.all.order("RANDOM()").first
    @breeds = Breed.all
  end

  def show
    @dogsshow = Dog.find(params[:id])
  end
end
