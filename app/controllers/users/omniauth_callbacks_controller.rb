class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  
  # tutorial followed: http://blog.impaled.org/code/2011/2/devise-1-2-with-omniauth-on-rails.html
  def method_missing(method, *args)
    raise "Unknown Provider Method: #{method}" unless method.to_s.downcase =~ /weibo/  #(open_id|facebook)
    
    omniauth = request.env['omniauth.auth']
    #puts omniauth
    session["devise.weibo_data"] = request.env["omniauth.auth"]  
    @user = User.includes(:authentications).merge(Authentication.where(:provider => omniauth['provider'], :uid => omniauth['uid'])).first
    
    if @user
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Weibo"  
      sign_in_and_redirect(:user, @user)
      
    elsif current_user
      current_user.authentications.create(:provider => omniauth['provider'], :uid => omniauth['uid'])
      redirect_to "/human_sniffer/friendships_friends"
      #redirect_to(account_pois_url)
    else
      @user = User.new
      
      # randomize password for new users
      @user.password = (15..25).collect{(45..126).to_a[Kernel.rand(81)].chr}.join
      
      # add users email from the returned authentication hash
      @user.email = omniauth['user_info']['email']
      
      @user.authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'])
      @user.save!
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Weibo"  
      sign_in_and_redirect(:user, @user)
    end
  end
  
  
  # tutorial followed   
  def weibo2  
  # You need to implement the method below in your model
  @user = User.find_for_weibo_oauth(request.env["omniauth.auth"], current_user)

  puts  "----------------omniauth.auth ------------------"  
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
