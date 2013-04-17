require 'spec_helper'

describe Category do
  it { should validate_presence_of(:name) }

  context 'when get photos' do
    subject do
      Category.first
    end

    its(:photos) { should_not be_nil }
    its(:photos) { should_not be_empty }
  end

  context 'when get categories' do
    subject do
      Category.all
    end

    it { should_not be_nil }
    it { should_not be_empty }

  end


end
