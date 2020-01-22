Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, '92a732e81aa888ca83cb', '29e9c0badbb1583329b82272eae4e5c1ab4e4e01'
end
