# factory girl factories

FactoryGirl.define do
  factory :user do
    email Faker::Internet.email
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    password '123Qwerty'
    password_confirmation '123Qwerty'
  end
end
