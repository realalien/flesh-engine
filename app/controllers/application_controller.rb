class ApplicationController < ActionController::Base
  protect_from_forgery


  def feedback
    auth = request.env["omniauth.auth"]
    render :text=>auth.to_yaml
  end
end
