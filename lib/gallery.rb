class Gallery
  THUMB_ROOT = "#{RAILS_ROOT}/public/images/preview"
  WEB_THUMB_ROOT = "images/preview"
  FEATURED_ROOT = "#{RAILS_ROOT}/public/images/featured"
  WEB_FEATURED_ROOT = "images/featured"

  def self.photos
    @host ||= Flickr.new("#{RAILS_ROOT}/config/flickr.yml")
    @photos ||= @host.photos.search(:user_id => APP_CONFIG["flickr"]["user_id"])
  end
  

  def self.refresh
    @photos = nil

    destroy_directory

    photos.each do |photo|
      get_featured(photo)
      get_thumbnail(photo)
    end
  end


  def self.get_featured(photo)
    get_image(photo, 550, 412, FEATURED_ROOT, WEB_FEATURED_ROOT)
  end


  def self.get_thumbnail(photo)
    get_image(photo, 310, 232, THUMB_ROOT, WEB_THUMB_ROOT)
  end


  def self.get_image(photo, width, height, location, web_location)
    unless File.exist? "#{location}/#{photo.id}.jpg" 
      puts "creating thumbnail #{location}/#{photo.id}.jpg"

      prepare_directory
      create_thumbnail(photo, width, height, location)
    end

    return "#{web_location}/#{photo.id}.jpg"
  end


  def self.create_thumbnail(photo, width, height, location)


      image_tools = WebMagick.new

      image = image_tools.create_thumbnail_fit(photo.url(:large), width, height)
      image.write("#{location}/#{photo.id}.jpg")
  end


private
  
  def self.prepare_directory

    unless File.directory? THUMB_ROOT
      puts "Creating directory #{THUMB_ROOT}"
      FileUtils.mkdir_p THUMB_ROOT
    end

    unless File.directory? FEATURED_ROOT
      puts "Creating directory #{FEATURED_ROOT}"
      FileUtils.mkdir_p FEATURED_ROOT
    end
  end

  def self.destroy_directory
    FileUtils.rm_rf THUMB_ROOT if File.directory? THUMB_ROOT
    FileUtils.rm_rf FEATURED_ROOT if File.directory? FEATURED_ROOT
  end

end
