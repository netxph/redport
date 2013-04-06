require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  test 'model should respond to get_photos' do
    assert_respond_to Photo, :get_photos
  end

  test 'get_photos should not return null' do
    photos = Photo.get_photos
    assert photos != nil
  end

  test 'get_photos should not be empty' do
    photos = Photo.get_photos
    assert photos.count > 0
  end

  test 'model should respond to get_categories' do
    assert_respond_to Photo, :get_categories
  end

  test 'get_categories should not return null' do
    categories = Photo.get_categories
    assert categories != nil
  end

  test 'get_categories should not be empty' do
    categories = Photo.get_categories
    assert categories.count > 0
  end

  test 'should not be valid if empty' do
    photo = Photo.new

    assert !photo.valid?
  end

  test 'should be valid if complete' do
    photo = Photo.new
    photo.name = 'test'
    photo.description = 'test description'
    photo.category = 'test'
    photo.url = 'http://localhost/test.jpg'

    assert photo.valid?
  end

  test 'should not be valid if name is missing' do
    photo = photos(:flower)
    photo.name = nil

    assert !photo.valid?
  end

  test 'should not be valid if category is missing' do
    photo = photos(:flower)
    photo.category = nil

    assert !photo.valid?
  end

  test 'should not be valid if url is missing' do
    photo = photos(:flower)
    photo.url = nil

    assert !photo.valid?
  end

end
