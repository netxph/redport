Given /^I have pictures from gallery$/ do
  Photograph.delete_all
  Photograph.import_from_web
end

Then /^I should see some pictures$/ do
  Photograph.count.should > 0
end
