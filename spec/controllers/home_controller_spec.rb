require 'spec_helper'

describe HomeController do

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'repair'" do
    it "returns http success" do
      get 'repair'
      response.should be_success
    end
  end

end
