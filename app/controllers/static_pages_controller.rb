class StaticPagesController < ApplicationController
  def home
    @carousels = Carousel.all
    @last_event = Event.last
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
