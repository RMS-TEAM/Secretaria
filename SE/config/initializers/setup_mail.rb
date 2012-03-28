ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "medellin.com",
  :user_name            => "rms.new.solutions",
  :password             => "solu1234*",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
