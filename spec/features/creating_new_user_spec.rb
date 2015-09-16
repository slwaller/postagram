require 'rails_helper'

feature 'Creating a new user' do
  background do
    visit '/'
    click_link 'Register'
  end
  scenario 'can create a new user through index page' do
    fill_in 'Email', with: 'rspecuser@mailinator.com'
    fill_in 'User Name', with: 'Rspecuser'
    fill_in 'Password', with: 'password', match: :first
    fill_in 'Confirm Password', with: 'password'

    click_button 'Sign up'
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end

  scenario 'requires a user name to successfully create an account' do
    fill_in 'Email', with: 'rspecuser@mailinator.com'
    fill_in 'Password', with: 'password', match: :first
    fill_in 'Confirm Password', with: 'password'

    click_button 'Sign up'
    expect(page).to have_content("can't be blank")
  end

  scenario 'requires a user name to be more than 4 characters' do
    fill_in 'Email', with: 'rspecuser@mailinator.com'
    fill_in 'User Name', with: 'a'
    fill_in 'Password', with: 'password', match: :first
    fill_in 'Confirm Password', with: 'password'
  end
end