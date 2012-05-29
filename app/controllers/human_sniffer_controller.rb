class HumanSnifferController < ApplicationController

  def friendships_friends
    #render :text => session["devise.weibo_data"]
    token = session["devise.weibo_data"]["credentials"]['token']
    #puts tokenh || "token not retreived! "


    @client = Grizzly::Client.new(token)
    @friends = @client.friends(session["devise.weibo_data"]['uid'])
  end
end
