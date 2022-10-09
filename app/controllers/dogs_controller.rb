class DogsController < ApplicationController
  def index
    @dogs = Dog.all.order("name DESC")
  end

  def show
    @dog = Dog.find(params[:id])
  end
end
