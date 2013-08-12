class SessionsController < ApplicationController
  def new
    render :login
  end

  def create
    @user = User.find_by_email(params[:user][:email])
    if @user && @user.password == params[:user][:password]
      login(@user)
      redirect_to bands_url
    else
      flash[:notice] ||= []
      flash[:notice] << "Login failed."
      redirect_to login_url
    end
  end

  def destroy
    logout
    redirect_to login_url
  end
end
