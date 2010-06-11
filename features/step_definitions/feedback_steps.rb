Given /^I have no feedbacks$/ do
  Feedback.delete_all
end

Then /^I should have ([0-9]+) feedback$/ do |count|
  Feedback.count.should == count.to_i
end
