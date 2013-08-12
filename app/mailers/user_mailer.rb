class UserMailer < ActionMailer::Base
  default from: "adler@musicapp.com"

  def welcome_email(user)
    @user = user
    @url = "http://musicapp.com/login"
    activation_token = @user.activation_token

    @activate_url = Addressable::URI.new(
      :scheme => "http",
      :host => "localhost:3000",
      :path => "activate",
      :query_values => {:token => activation_token}
      ).to_s

    mail(to: user.email, subject: 'Welcome to Music App!')
  end
end
