FactoryGirl.define do
  factory :photo do
    sequence(:name) { |n| "flower#{n}" }
    sequence(:category) { |n| "macro#{n}" }
    description 'a beautiful flower'
    url 'http://localhost/flower.jpg'
  end
end