class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'
 
  def welcome_email(order)
    @order = order
    @url  = 'no-reply@jungle.com'
    mail(to: order.email, subject: 'Welcome to My Awesome Site')
  end
end
