module GalleryHelper
  def render_featured(photo)
    unless photo.nil?
      "<img src=\"#{Gallery.get_featured(photo)}\" />"
    end
  end

  def render_photo(photo)
    unless photo.nil?
      "<a href=\"#{photo.url}\"><img src=\"#{Gallery.get_thumbnail(photo)}\" alt=\"#{photo.name}\"/></a>"
    end
  end
end
