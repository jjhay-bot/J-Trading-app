require 'rails_helper'

RSpec.describe "Log-in using Admin account", type: :system do

  before do
    driven_by(:rack_test)
  end

  Admin.destroy_all
  before :each do
    # Devise gem rspec helper
    @admin = Admin.create(:email => 'test123@example.com', :password => 'password123')
    visit "/admins/sign_in"
  end

  it 'expect to visit admin sign in page ' do
    expect(page).to have_current_path(new_admin_session_path)
  end

  it 'expect to visit admin dassboard (correct email & password)' do
    fill_in 'Email', with: 'test123@example.com'
    fill_in "Password",	with: "password123"
    click_on 'Log in'
    expect(page).to have_current_path("/admins/dashboard/index")
  end

  it 'expect to have notification Invalid Email or password (incorrect email)' do
    fill_in 'Email', with: 'st123@example.com'
    fill_in "Password",	with: "password123"
    click_on 'Log in'
    expect(page).to have_text('Invalid Email or password.')
  end

  it 'expect to have notification Invalid Email or password (incorrect password)' do
    fill_in 'Email', with: 'test123@example.com'
    fill_in "Password",	with: "password1"
    click_on 'Log in'
    expect(page).to have_text('Invalid Email or password.')
  end

  it 'expect to return to sign in page (incorrect email)' do
    fill_in 'Email', with: 'test123@example.com'
    fill_in "Password",	with: "password1"
    click_on 'Log in'
    expect(page).to have_current_path(new_admin_session_path)
  end

  it 'expect to return to sign in page (incorrect password)' do
    fill_in 'Email', with: 'test123@example.com'
    fill_in "Password",	with: "password1"
    click_on 'Log in'
    expect(page).to have_current_path(new_admin_session_path)
  end

end
