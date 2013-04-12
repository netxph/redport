FactoryGirl.define do
  factory :photo do
    sequence(:name) { |n|  "flower#{n}" }
    description 'beautiful spring flower'
    sequence(:category) { |n|  "macro#{n}" }
    url 'http://localhost/flower.jpg'
  end
end