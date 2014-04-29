module LoginMacros
  def login(email, pass)
    visit new_user_session_path
    fill_in 'Email', :with => email
    fill_in 'Password', :with => pass
    click_button 'Log in'
  end
end
