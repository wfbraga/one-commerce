# frozen_string_literal: true

# we have created the metho configure_permitted_parameters in the application controller
# so we user can infor name on sing up
# the before action is called IF the devise controller is called
class ApplicationController < ActionController::API
include RackSessionFixController
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name email password password_confirmation])
  end
end
