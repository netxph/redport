module GalleryHelper
  def render_photo(photo)
    "<a href=\"#{photo.url(:large)}\" rel=\"lightbox[recent]\"><img src=\"#{photo.url(:medium)}\" /></a>"
  end
end