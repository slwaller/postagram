require 'rails_helper'

feature 'Creating posts' do
  background do
    user = create :user
    sign_in_with user
  end

  scenario 'can create a new post' do
    visit '/'
    click_link 'New Post'
    attach_file('Image', "spec/files/images/seoul.jpg")
    fill_in 'Caption', with: "Beautiful Seoul from N Tower!"
    click_button 'Create Post'
    expect(page).to have_content("Beautiful Seoul from N Tower!")
    expect(page).to have_css("img[src*='seoul']")
  end
end