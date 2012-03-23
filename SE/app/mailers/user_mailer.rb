class UserMailer < ActionMailer::Base
  default :from => "example@from.com"
  
  def registration_confirmation(user)
    @user = user
    @url  = "http://example.com/login"
    mail(:to => user.email, :subject => "Welcome to My Awesome Site")

  end
end