require 'oa-oauth'
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :tsina, '3422703718', '56b821f7588cf3987878b7d5beed1c32' #ENV['WEIBO_KEY'], ENV['WEIBO_SECRET']
end
