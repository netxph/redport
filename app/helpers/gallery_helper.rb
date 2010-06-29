module GalleryHelper
  def render_featured(photo)

    return "<img src=\"#{Gallery.get_featured(photo)}\" />"

  end

  def render_photo(photo)

    return "<a href=\"#{photo.url(:large)}\" rel=\"lytebox[recent]\" title=\"#{photo.title}\"><img src=\"#{Gallery.get_thumbnail(photo)}\" /></a>"

  end
end
