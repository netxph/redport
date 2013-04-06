require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  test 'get_photos should not return null' do
    photos = Photo.get_photos
    assert photos != nil
  end

  test 'get_photos should not be empty' do
    photos = Photo.get_photos
    assert photos.count > 0
  end

  test 'get_categories should not return null' do
    categories = Photo.get_categories
    assert categories != nil
  end

  test 'get_categories should not be empty' do
    categories = Photo.get_categories
    assert categories.count > 0
  end

end
