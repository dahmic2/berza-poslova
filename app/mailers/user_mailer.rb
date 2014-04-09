class UserMailer < ActionMailer::Base
default from: 'notifications@example.com'

def welcome_email(user)
  @user = user
  @url  = 'http://localhost:3000/log_in'
  mail(to: @user.email, subject: 'Welcome to My Awesome Site')
end
end
