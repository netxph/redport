require 'spec_helper'

describe Photo do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:url) }
  it { should validate_presence_of(:category) }

  it { Photo.should respond_to :get_photos }
  it { Photo.should respond_to :get_categories }

  context 'when get photos' do
    subject { Photo.get_photos }

    it { should_not be_nil }
    its(:count) { should == 2 }

  end

  context 'when get categories' do
    subject { Photo.get_categories }

    it { should_not be_nil }
    its(:count) { should == 2 }
  end

end
