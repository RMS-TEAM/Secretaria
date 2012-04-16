class UserMailer < ActionMailer::Base
  default :from => "example@from.com"
  
  def registration_confirmation(user)
    @user = user
    @url  = "http://example.com/login"
    mail(:to => user.email, :subject => "Registro en Medicion de La Calidad")

  end


end