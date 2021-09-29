require 'rails_helper'

RSpec.describe "Log-in using Buyer account", type: :system do

  before do
    driven_by(:rack_test)
  end

  Broker.destroy_all
  before :all do
    # Devise gem rspec helper
    @broker = Broker.new(:email => 'test123@example.com', :password => 'password123', approved: "true")
  end

  before :each do 
    visit "/broker/sign_in"
  end


  it 'expect to visit broker sign in page ' do
    expect(page).to have_current_path(new_broker_session_path)
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
    expect(page).to have_current_path(new_broker_session_path)
  end

  it 'expect to return to sign in page (incorrect password)' do
    fill_in 'Email', with: 'test123@example.com'
    fill_in "Password",	with: "password1"
    click_on 'Log in'
    expect(page).to have_current_path(new_broker_session_path)
  end


end
