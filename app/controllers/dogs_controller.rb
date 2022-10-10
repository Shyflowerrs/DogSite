class DogsController < ApplicationController
  def index
    @quote = Quote.all.order("RANDOM()").first
    @dogs = Dog.all.order("name DESC")
  end

  def show
    @quote = Quote.all.order("RANDOM()").first
    @dogs = Dog.find(params[:id])
    @breeds = Breed.find(@dogs["breed_id"])
  end

  def search
    @quote = Quote.all.order("RANDOM()").first
    search = "%#{params[:keywords]}%"
    @dogsearch = Dog.where("name LIKE ?", search)
  end
end
