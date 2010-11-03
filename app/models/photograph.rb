class Photograph < ActiveRecord::Base
  validates_uniqueness_of :code  
  validates_presence_of :code, :name, :url

  ALL_CACHE_KEY = "Photograph.all"

  def self.all_cached
    Rails.cache.fetch(ALL_CACHE_KEY) { find(:all, :order => "updated_at desc") }
  end

  def self.import_from_web
   begin
      Gallery.photos.each do |photo|
        unless exists?(:code => photo.id)
          puts "importing #{photo.title}"
          create!(:code => photo.id, :name => photo.title, :description => photo.description, :url => photo.url(:large))
        end
      end

      Rails.cache.delete(ALL_CACHE_KEY)
      return true
   rescue
     return false
   end
  end

  def self.all_paged(page)
    Photograph.paginate :page => page, :per_page => APP_CONFIG['global']['pages']
  end

  def self.get_featured(index)
    photos = all_cached

    unless photos.length == 0

      if index.nil?
        offset = rand(photos.length)
      else
        offset = index.to_i
        
        unless (0..photos.length-1) === offset
          offset = 0
        end
      end 

      return photos[offset]

    end
  end
end
