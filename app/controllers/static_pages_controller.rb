class StaticPagesController < ApplicationController
  def home
    @photos = []
    @photos << Album.find_by_title("Parallel Universe").cover
    @photos << Album.find_by_title("Dinner").cover
    @photos << Album.find_by_title("Blizzard").cover

  end

  def about
  end


  def contact
    @params = params
    
  end

  
end
