require 'rails_helper'

RSpec.describe "Edit Broker account", type: :system do

  before do
    driven_by(:rack_test)
  end

  Broker.destroy_all
  before :each do
    # Devise gem rspec helper
    @broker = Broker.create(:email => 'test123@example.com', :password => 'password123', :approved => "true");
    login_as(@broker, :scope => :broker)
    visit "/broker/edit"
  end

  it 'expect to visit edit broker page' do
    expect(page).to have_current_path(edit_broker_registration_path)
  end

  it 'edit broker email' do
    fill_in 'Email', with: 'edit123@example.com'
    fill_in "Current password",	with: "password123"
    click_on 'Update'
    expect(page).to have_current_path("/broker/sign_in")
  end

  it 'edit broker password' do
    fill_in 'Password', with: 'edit123@example.com'
    fill_in "Password confirmation",	with: "password123"
    fill_in "Current password",	with: "password123"
    click_on 'Update'
    expect(page).to have_current_path("/broker/sign_in")
  end

end
