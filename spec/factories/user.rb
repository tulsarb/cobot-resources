FactoryGirl.define do
  factory :user do |u|
    u.sequence(:email) { |n| "john#{n}@example.com" }
    password 'my_password'
  end
end
