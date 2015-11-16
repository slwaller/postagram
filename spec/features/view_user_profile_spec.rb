feature 'viewing user profiles' do
  background do
    # Create a user.
    # Create a second user
    # Create a post owned by the user.
    # Create a post owned by the second user.
    # Sign in with the first user. 
    # Visit the dashboard.
    # Click the first user's user name
  end

  scenario 'visiting a profile page shows the username in URL' do
    # expect the page URL to be /users/username
  end

  scenario 'a profile should only show the specified users posts' do
    # expect the page to show only user owned posts
    # expect the page to NOT show other users posts
  end
end
