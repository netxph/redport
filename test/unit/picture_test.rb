require 'test_helper'

class PictureTest < ActiveSupport::TestCase
  test "should save picture with basic input" do
    picture = Picture.new
    picture.location = "http://localhost/test.jpg"  

    assert picture.save
  end

  test "should not save picture with missing location" do
    picture = Picture.new

    assert !picture.valid?
    assert picture.errors[:location][0] == "can't be blank"

    assert !picture.save
  end

end
