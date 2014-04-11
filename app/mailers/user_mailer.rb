class UserMailer < ActionMailer::Base
default from: 'dan@posao.com'

def welcome_email(user)
  @user = user
  @url  = 'http://localhost:3000/log_in'
  mail(to: @user.email, subject: 'Dobro doslao/la na berzu poslova')
end

#def activate_account(user)
 # @user = user
  #mail(to: @user.email, subject: 'Posao.ba - Link za aktivaciju naloga')
#end
end
