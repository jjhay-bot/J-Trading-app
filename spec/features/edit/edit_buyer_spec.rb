require 'rails_helper'

RSpec.describe "Edit User account", type: :system do

  before do
    driven_by(:rack_test)
  end

  User.destroy_all
  before :each do
    # Devise gem rspec helper
    @user = User.create(:email => 'test123@example.com', :password => 'password123')
    login_as(@user, :scope => :user)
    visit "/users/edit"
  end

  it 'expect to visit edit user page' do
    expect(page).to have_current_path(edit_user_registration_path)
  end

  it 'edit user email' do
    fill_in 'Email', with: 'edit123@example.com'
    fill_in "Current password",	with: "password123"
    click_on 'Update'
    expect(page).to have_current_path("/users/sign_in")
  end

  it 'edit user password' do
    fill_in 'Password', with: 'edit123@example.com'
    fill_in "Password confirmation",	with: "password123"
    fill_in "Current password",	with: "password123"
    click_on 'Update'
    expect(page).to have_current_path("/users/sign_in")
  end

end
