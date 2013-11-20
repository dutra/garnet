class ContactMail < ActionMailer::Base
  default from: "Zelda Theodore <zeldatheodore@gmail.com>"

  def contact_email(params)
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    mail(to: "fenwayhouse@mit.edu", from: "Zelda Theodore <zeldatheodore@gmail.com>", subject: "#{@name} just sent a contact email through the website") 
  end
end
