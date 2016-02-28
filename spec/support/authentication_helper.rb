module AuthenticationHelper
  def authenticated_get(path, params = {}, headers = {})
    get path, params, headers.merge('HTTP_AUTHORIZATION' => ActionController::HttpAuthentication::Basic.encode_credentials('sai', 'password'))
  end

  def authenticated_post(path, params = {}, headers = {})
    post path,
         params,
         headers.merge('HTTP_AUTHORIZATION' => ActionController::HttpAuthentication::Basic.encode_credentials('sai', 'password'))
  end

  def authenticated_put(path, params = {}, headers = {})
    put path,
        params,
        headers.merge('HTTP_AUTHORIZATION' => ActionController::HttpAuthentication::Basic.encode_credentials('sai', 'password'))
  end

  def authenticated_delete(path, params = {}, headers = {})
    delete path,
           params,
           headers.merge('HTTP_AUTHORIZATION' => ActionController::HttpAuthentication::Basic.encode_credentials('sai', 'password'))
  end

  def http_access_denied
    "HTTP Basic: Access denied.\n"
  end
end
