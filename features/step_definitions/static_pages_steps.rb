Given /^I have pictures from gallery$/ do
  Gallery.photos
end

Then /^I should see some pictures$/ do
  Gallery.photos.total.should > 0
end
