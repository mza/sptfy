class HomeController < ApplicationController
  
  def index
    @link = Link.new
  end
end
