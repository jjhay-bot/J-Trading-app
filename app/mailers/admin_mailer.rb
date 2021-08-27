class AdminMailer < Devise::Mailer
  default from: 'from@example.com'
  layout 'mailer'
  
  def new_user_waiting_for_approval(user)
    @user = user
    mail(to: @user , subject: 'Welcome to the Stock App!')
  end
end
