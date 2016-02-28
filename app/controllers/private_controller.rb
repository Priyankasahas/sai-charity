class PrivateController < ApplicationController
  include ActionController::HttpAuthentication::Basic::ControllerMethods

  before_action :valid_credentials_required

  protected

  def valid_credentials_required
    secrets = Rails.application.secrets
    username = secrets.sai_username
    password = secrets.sai_password

    authenticate_or_request_with_http_basic do |u, p|
      u == username && p == password # extractable
    end
  end
end
