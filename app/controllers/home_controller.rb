class HomeController < ApplicationController
  def index
    @dogs = Dog.order("name DESC")
    @quote = Quote.all.order("RANDOM()").first
  end

  def show; end

  def search
    search = "%#{params[:keywords]}%"
    @dogs = Dog.where("name LIKE ?", search)
  end
end
