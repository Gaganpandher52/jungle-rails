class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'no-reply@jungle.com'
    mail(to: 'gaganpandher52@hotmail.com', subject: 'Welcome to My Awesome Site')
  end
end
