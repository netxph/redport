require 'test_helper'

class PhotoTest < ActiveSupport::TestCase

  should validate_presence_of(:name)
  should validate_presence_of(:category)
  should validate_presence_of(:url)

  context 'get photos' do

    setup do
      @photos = Photo.get_photos
    end

    should 'respond to get_photos' do
      assert_respond_to Photo, :get_photos
    end

    should 'not return null' do
      assert @photos != nil
    end

    should 'not be empty' do
      assert_equal 2, @photos.count
    end

  end

  context 'get categories' do

    setup do
      @categories = Photo.get_categories
    end

    should 'respond to get_categories' do
      assert_respond_to Photo, :get_categories
    end

    should 'not return null' do
      assert @categories != nil
    end

    should 'not be empty' do
      assert_equal 2, @categories.count
    end

  end

  context 'is valid' do

    should 'valid if complete' do
      photo = FactoryGirl.build(:photo)

      assert photo.valid?
    end

    should 'not valid if empty' do
      photo = Photo.new

      assert !photo.valid?
    end
  end

end
