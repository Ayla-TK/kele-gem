require 'httparty'

class Kele
  include HTTParty

  def initialize(email, password)
      response = self.class.post("https://www.bloc.io/api/v1/sessions", body: {"email": email, "password": password})
      if StandardError
        "error"
      end
    @auth_token = response["auth_token"]
  end



end
