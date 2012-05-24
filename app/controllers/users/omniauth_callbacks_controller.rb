class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def weibo 
    # You need to implement the method below in your model
    @user = User.find_for_weibo_oauth(request.env["omniauth.auth"], current_user)

    puts  request.env["omniauth.auth"]    

    if @user.persisted?
      puts "user is persisted"
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Weibo"
      sign_in_and_redirect @user, :event => :authentication
    else
      puts "user is NOT persisted"
      session["devise.weibo_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
end
