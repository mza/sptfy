class LinksController < ApplicationController
  
  def create
    redirect_to :controller => :home
  end
  
end
