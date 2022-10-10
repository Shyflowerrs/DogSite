class HomeController < ApplicationController
  def index
    @dogs = Dog.order("name DESC")
    @quote = Quote.all.order("RANDOM()").first
    @breeds = Breed.all

    @data = @dogs.page(params[:page])
    # @pagination = @dogs.page(7)
  end

  def show
    @dogsshow = Dog.find(params[:id])
  end
end
