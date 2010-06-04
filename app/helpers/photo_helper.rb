module PhotoHelper
  GALLERY_HOST = Flickr.new("#{RAILS_ROOT}/config/flickr.yml")
  GALLERY = GALLERY_HOST.photos.search(:user_id => APP_CONFIG["flickr"]["user_id"])
end