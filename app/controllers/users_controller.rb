class UsersController < ApplicationController
  def new
    render :new
  end

  def create
    @user = User.new(params[:user])
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
end
