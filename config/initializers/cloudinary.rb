#Cloudinary.config do |config|
#    config.cloud_name = ENV['CLOUDINARY_CLOUD_NAME']
#    config.api_key = ENV['CLOUDINARY_API_KEY']
#    config.api_secret = ENV['CLOUDINARY_API_SECRET']
#end

#Cloudinary.config do |config|
#    config.cloud_name = ENV['CLOUDINARY_CLOUD_NAME']
#    config.api_key = ENV['CLOUDINARY_API_KEY']
#    config.api_secret = ENV['CLOUDINARY_API_SECRET']
#    config.cdn_subdomain = true
#    config.enhance_image_tag = true
#end

Cloudinary.config do |config|
  config.cloud_name = 'cloudolga'
  config.api_key = '144655146287369'
  config.api_secret = 'f9vbfzfxtnE1K1gkO0YKL8Janjw'
  config.cdn_subdomain = true
end
