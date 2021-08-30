class UserMailer < ApplicationMailer
  default from: 'no-reply@mpussycat.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://pussycat.com/login'
    mail(to: @user.email, subject: 'Welcome to Pussy Cat Shop !')
  end
end
