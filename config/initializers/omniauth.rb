Rails.application.config.middleware.use OmniAuth::Builder do
  provider :weibo, ENV['WEIBO_KEY'], ENV['WEIBO_SECRET']
end
