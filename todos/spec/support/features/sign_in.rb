module Features
  
  def sign_in()
    sign_in_as 'me@example.com'
  end

  def sign_in_as(email)
    visit root_path
    click_on 'Sign in'
    fill_in 'Email', with: 'me@example.com'
    click_on 'Submit'
  end
end
