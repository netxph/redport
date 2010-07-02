Given /^I have pictures from gallery$/ do
  Gallery.photos.each do |photo|
    unless Photograph.exists?(:code => photo.id)
      puts "importing #{photo.title}"
      Photograph.create!(:code => photo.id, :name => photo.title, :description => photo.description, :url => photo.url(:large))
    end
  end  
end

Then /^I should see some pictures$/ do
  Photograph.count.should > 0
end
