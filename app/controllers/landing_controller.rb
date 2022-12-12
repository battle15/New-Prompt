class LandingController < ApplicationController

  def index
    render({ :template => "landing/index.html.erb"})
  end

  def create

  end 
  
end
