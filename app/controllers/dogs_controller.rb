class DogsController < ApplicationController
  def index
    @dogs = Dog.all.order("name DESC")
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @searchdogs = Dog.where("name LIKE ?", wildcard_search)
  end
end
