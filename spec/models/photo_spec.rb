require 'spec_helper'

describe Photo do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:url) }
  it { should validate_presence_of(:category) }

  it { Photo.should respond_to :get_categories }

  context 'when get categories' do
    subject do
      FactoryGirl.create_list(:photo, 2)

      Photo.get_categories
    end

    it { should_not be_nil }
    its(:count) { should == 2 }
  end

end
