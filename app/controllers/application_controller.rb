class ApplicationController < ActionController::Base
  def index
    @quote = Quote.all.order("RANDOM()").first
  end

  def search
    @quote = Quote.all.order("RANDOM()").first
    search = "%#{params[:keywords]}%"
    @dogs = Dog.where("name LIKE ?", search)
  end
end
