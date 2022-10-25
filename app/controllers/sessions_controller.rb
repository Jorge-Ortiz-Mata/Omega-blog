class SessionsController < ApplicationController

  def login

  end

  def create
    # debugger

    @user = User.find_by(email: params[:session][:email])

    if @user.present? && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Login successfully"
    else
      redirect_to login_path, notice: "Email or password incorrect"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: "Logout successfully"
  end
end
