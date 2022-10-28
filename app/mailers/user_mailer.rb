class UserMailer < ApplicationMailer

  def confirm_account
    @user = 'Jorge Ortiz'
    mail(to: 'yorch.academy@gmail.com', subject: 'Welcome to My Omega Blog')
  end
end
