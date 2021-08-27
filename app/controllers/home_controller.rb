class HomeController < ApplicationController
  # before_action :authenticate_user!

  def index
  end

  # def send_mail
  #   ActionMailer::Base.mail(:from => "removed_email_address@domain.invalid", 
  #                           :to => "removed_email_address@domain.invalid", 
  #                           :subject => 'Contact request', 
  #                           :body =>'test').deliver_now
  #   render nothing: true
  # end
end
