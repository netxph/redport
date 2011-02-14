Given /^I have no feedbacks$/ do
  Feedback.delete_all
end

Given /^I have posts from (.+)$/ do |emails|
  emails.split(', ').each do |email|
    Feedback.create!(:email => email, :content => "Great site!")
  end
end

Then /^I should have ([0-9]+) feedback$/ do |count|
  Feedback.count.should == count.to_i
end
