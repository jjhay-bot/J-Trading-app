require 'rails_helper'

RSpec.describe "Edit Admin account", type: :system do

  before do
    driven_by(:rack_test)
  end

  Admin.destroy_all
  before :each do
    # Devise gem rspec helper
    @admin = Admin.create(:email => 'test123@example.com', :password => 'password123')

    login_as(@admin, :scope => :admin)
    visit "/admins/edit"
  end

  it 'expect to visit edit admin page' do
    expect(page).to have_current_path(edit_admin_registration_path)
  end

  it 'edit admin email' do
    fill_in 'Email', with: 'edit123@example.com'
    fill_in "Current password",	with: "password123"
    click_on 'Update'
    expect(page).to have_current_path("/admins/sign_in")
  end

  it 'edit admin password' do
    fill_in 'Password', with: 'edit123@example.com'
    fill_in "Password confirmation",	with: "password123"
    fill_in "Current password",	with: "password123"
    click_on 'Update'
    expect(page).to have_current_path("/admins/sign_in")
  end

end
