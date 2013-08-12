class UserMailer < ActionMailer::Base
  default from: "adler@musicapp.com"

  def welcome_email(user)
    @user = user
    @url = "http://musicapp.com/login"
    mail(to: user.email, subject: 'Welcome to Music App!')
  end
end
