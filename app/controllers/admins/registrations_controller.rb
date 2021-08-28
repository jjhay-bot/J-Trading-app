# frozen_string_literal: true

class Admins::RegistrationsController < Devise::RegistrationsController
  include Accessible
  skip_before_action :check_resource, except: [:new, :create]
  
  def create
    super
    @user = User.new(user_params)
    UserMailer.welcome_email(User.last).deliver_now
  end
  

end
