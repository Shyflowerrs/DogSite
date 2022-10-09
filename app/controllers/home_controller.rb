class HomeController < ApplicationController
  def index
    @dogs = Dog.order("name DESC")
  end

  def show; end
end
