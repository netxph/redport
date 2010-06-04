module PhotoHelper
  @photo_host ||= Flickr.new("#{RAILS_ROOT}/config/flickr.yml")
  
  def photo_gallery
    
  end
end