class ApplicationController < ActionController::Base
  def index
    @quote = Quote.all.order("RANDOM()").first
  end
end
