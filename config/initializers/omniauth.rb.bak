#require 'oa-oauth'
#Rails.application.config.middleware.use OmniAuth::Builder do
#  provider OmniAuth::Strategies::Tsina, '3422703718', '56b821f7588cf3987878b7d5beed1c32' #ENV['WEIBO_KEY'], ENV['WEIBO_SECRET']
#end

Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :twitter, "GybWzujUda7RnJgKxBaHQ", "1WjLOStoEpiYlagjkMbsFVMcGcA5TTHIFqkTQhX7I" 
  provider :weibo, "3422703718", "56d5601999968f782ee5ac8517b302e8"
 # provider  :weibo, "3302456831", "f0eeea9c0bae35ce0dc45136d561afb9"  # 站内应用
end
