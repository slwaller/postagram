FactoryGirl.define do
  factory :user do
    email 'rspecuser@mailinator.com'
    user_name 'rspecuser'
    password 'password'
    id 1
  end
end
