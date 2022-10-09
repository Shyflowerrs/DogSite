class DogsController < ApplicationController
  def index
    @quote = Quote.all.order("RANDOM()").first
    @dogs = Dog.all.order("name DESC")
  end

  def show
    @dogs = Dog.find(params[:id])
  end

  def search
    @quote = Quote.all.order("RANDOM()").first
    search = "%#{params[:keywords]}%"
    @dogs = Dog.where("name LIKE ?", search)
  end
end
