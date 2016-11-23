FactoryGirl.define do
  factory :resource do |r|
    name 'Board Room'
    r.sequence(:integration_id) { |n| "12345#{n}" }
    integration_raw 'the-json-here'
  end
end
