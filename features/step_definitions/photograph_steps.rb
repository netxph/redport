Given /^I have no photographs$/ do
  Photograph.delete_all
end

Then /^I should have photographs$/ do
  Photograph.count.should > 0
end

Given /^I have no cached files$/ do
  FileUtils.rm_rf "#{RAILS_ROOT}/public/images/preview"
  FileUtils.rm_rf "#{RAILS_ROOT}/public/images/featured" 
end

Then /^I should have cached files$/ do
  # File.directory?("#{RAILS_ROOT}/public/images/preview").should == true
  # File.directory?("#{RAILS_ROOT}/public/images/featured").should == true
end

