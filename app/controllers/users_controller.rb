class UsersController < ApplicationController
  def new
    render :new
  end

  def create
    @user = User.new(params[:user])
    generate_activation_token
    if @user.save
      msg = UserMailer.welcome_email(@user)
      msg.deliver!

      flash[:notice] ||= []
      flash[:notice] << "Sign up successful!"

      redirect_to bands_url
    else
      flash[:notice] ||= []
      flash[:notice] << "Sign up failed. Try again!"

      redirect_to :back
    end
  end

  def activate
    @user = User.find_by_activation_token(params[:token])
    if @user
      @user.activated = true
      @user.save
      redirect_to bands_url
    else
      flash[:notice] ||= []
      flash[:notice] << "Activation failed."
      redirect_to login_url
    end
  end

  def generate_activation_token
    token = SecureRandom.urlsafe_base64
    while User.find_by_activation_token(token)
      token = SecureRandom.urlsafe_base64
    end
    @user.activation_token = token
  end
end
