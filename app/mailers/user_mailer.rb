class UserMailer < ActionMailer::Base
  default from: "pravnisavjeti@gmail.com"

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Vaša šifra')
  end
end
