module GalleryHelper
  def render_photo(photo)
    "<a href=\"#{photo.url(:large)}\" rel=\"lightbox[recent]\" title=\"#{photo.title}\"><img src=\"#{photo.url(:medium)}\" /></a>"
  end
end
