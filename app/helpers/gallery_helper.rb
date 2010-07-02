module GalleryHelper
  def render_featured(photo)
    unless photo.nil?
      "<img src=\"#{Gallery.get_featured(photo)}\" />"
    end
  end

  def render_photo(photo)
    unless photo.nil?
      "<a href=\"#{photo.url}\" rel=\"lytebox[recent]\" title=\"#{photo.name}\"><img src=\"#{Gallery.get_thumbnail(photo)}\" /></a>"
    end
  end
end
