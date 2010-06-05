class Gallery
  
  def self.photos
    @host ||= Flickr.new("#{RAILS_ROOT}/config/flickr.yml")
    @photos ||= @host.photos.search(:user_id => APP_CONFIG["flickr"]["user_id"])
  end
  
  def self.refresh
    @photos = nil
  end
  
end