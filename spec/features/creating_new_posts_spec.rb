require 'rails_helper'

feature 'Creating posts' do
  background do
    user = create :user
    sign_in_with user
  end

  # scenario 'can create a new post' do
  #   visit '/'
  #   click_link 'New Post'
  #   attach_file('Avatar', "spec/files/images/seoul.jpg")
  #   fill_in 'Caption', with: "Beautiful Seoul from N Tower!"
  #   click_button 'Create Post'
  #   expect(page).to have_content("Beautiful Seoul from N Tower!")
  #   expect(page).to have_css("img[src*='seoul']")
  # end

  scenario 'a post needs an image to save' do
    visit '/'
    click_link 'New Post'
    fill_in 'Say something', with: "NO PICTURE LOL"
    click_button 'Create Post'
    expect(page).to have_content("Your new post couldn't be created! Please check the form.")
  end
end