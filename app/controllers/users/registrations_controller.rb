# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  include Accessible
  skip_before_action :check_resource, except: [:new, :create]  

  def create
    super
    if @user.save
      @user = User.new(user_params)
      UserMailer.with(user: @user).welcome_email.deliver_now
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :email,
      :password,
      :password_confirmation,
    )
  end
end
