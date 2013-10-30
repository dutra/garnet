class StaticPagesController < ApplicationController
  def home
    @photos = Photo.all
  end

  def about
  end
  
end
