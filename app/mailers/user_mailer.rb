class UserMailer < ApplicationMailer

  def confirm_account
    @user = params[:user]
    @url = "http://127.0.0.1:3001/#{@user.token}"
    mail(to: @user.email, subject: 'Welcome to My Omega Blog')
  end
end
