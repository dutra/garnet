class StaticPagesController < ApplicationController
  def home
    @carousels = Carousel.all
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
