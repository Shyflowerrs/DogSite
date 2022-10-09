class AboutController < ApplicationController
  def index
    @quote = Quote.all.order("RANDOM()").first
  end

  def show; end
end
