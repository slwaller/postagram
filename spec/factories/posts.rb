FactoryGirl.define do
  factory :post do
    caption "nofilter"
    avatar Rack::Test::UploadedFile.new(Rails.root + 'spec/files/images/seoul.jpg', 'image/jpg')
    user_id 1
  end
end