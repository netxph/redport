require 'spec_helper'

feature 'Display photos' do

  background do
    FactoryGirl.create(:photo)
  end

  scenario 'should respond to categories page' do
    visit categories_path
    page.status_code.should be 200
  end

  scenario 'should contain landscape category' do
    visit categories_path
    expect(page).to have_content 'Landscape'
  end

  scenario 'should contain waterfall photo' do
    visit categories_path
    expect(page).to have_content 'Waterfall'
  end
end
