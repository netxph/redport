require 'spec_helper'

describe Photo do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:url) }
  it { should validate_presence_of(:category) }

  it { should belong_to :category }

end
