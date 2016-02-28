require 'authenticates_users'

module V1
  class AuthenticationController < PrivateController
    def create
      user = AuthenticatesUsers.authenticate(params[:email], params[:password])

      if user
        render json: user
      else
        render nothing: true, status: :not_found
      end
    end
  end
end
