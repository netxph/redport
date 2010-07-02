Given /^I have no photographs$/ do
  Photograph.delete_all
end

Then /^I should have photographs$/ do
  Photograph.count.should > 0
end

