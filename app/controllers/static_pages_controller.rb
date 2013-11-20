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
    if params[:message].present?
      ContactMail.contact_email(params).deliver
      flash[:success] = "Email successfully sent!"
      redirect_to '/contact'
    end

    
  end

  
end
