class UserMailer < ApplicationMailer
  default from: 'no-reply@pussycat.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://pussycat.com/login'
    mail(to: @user.email, subject: 'Welcome to Pussy Cat Shop !')
  end

  def confirmation_command(user, item)
    @user = user
    @item = item
    @url  = 'http://pussycat.com/login'
    mail(to: @user.email, subject: 'Confirmation of your order !')
  end
end
