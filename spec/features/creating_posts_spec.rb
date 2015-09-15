# require 'rails_helper.rb'

# feature 'Creating posts' do
#   scenario 'can create a job' do
#     visit '/'
#     click_link 'New Post'
#     attach_file('Avatar', "spec/files/images/bgposta.jpg")
#     fill_in 'Caption', with: 'did you know #rspecisbestspec'
#     click_button 'Create Post'
#     expect(page).to have_content('#rspecisbestspec')
#     expect(page).to have_css("img[src*='bgposta.jpg']")
#   end
# end