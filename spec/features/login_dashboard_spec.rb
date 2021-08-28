require 'rails_helper'

RSpec.describe "Buyer Login Dashboard", type: :system do

    before do
        driven_by(:rack_test)
    end

    User.destroy_all
    before :all do 
        User.create(:email => 'test123@example.com', :password => 'f4k3p455w0rd')
    end

    before :each do
        visit root_path
        click_on 'Buyer'
        fill_in 'Email', with: 'test123@example.com'
        fill_in 'Password', with: 'f4k3p455w0rd'
        click_on 'Log in'
    end

    it 'expect to visit users/dashboard/index' do
         expect(page).to have_current_path users_authenticated_root_path 
    end

    it 'expect to have Sign Out as Buyer button' do
        expect(page).to have_content('Sign Out as Buyer')
    end

end



RSpec.describe "Not Approved Broker Login Dashboard", type: :system do

    before do
        driven_by(:rack_test)
    end

    before :each do 
        @broker = Broker.create(:email => 'test123@example.com', :password => 'f4k3p455w0rd')
        login_as(@broker, :scope => :broker)
    end  

    it 'expect not to visit brokers/dashboard/index' do
        visit brokers_authenticated_root_path
        expect(page).to have_current_path "/broker/sign_in"
    end

    it 'expect to have Log in button' do
        visit '/brokers/dashboard/index'
        expect(page).to have_content('Log in')
    end

end



RSpec.describe "Approved Broker Login Dashboard", type: :system do

    before do
        driven_by(:rack_test)
    end

    before :each do 
        @broker = Broker.create(:email => 'test123@example.com', :password => 'f4k3p455w0rd', :approved => true)
        login_as(@broker, :scope => :broker)
    end  

    it 'expect to visit brokers/dashboard/index' do
        visit brokers_authenticated_root_path
        expect(page).to have_current_path brokers_authenticated_root_path
    end

    it 'expect to have Sign Out as Broker button' do
        visit '/brokers/dashboard/index'
        expect(page).to have_content('Sign Out as Broker')
    end

end