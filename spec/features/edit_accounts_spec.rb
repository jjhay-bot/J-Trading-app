require 'rails_helper'

RSpec.describe "Edit User", type: :system do

    before do
        driven_by(:rack_test)
    end

    User.destroy_all

    before :each do
        @user = User.create(:email => 'test123@example.com', :password => 'f4k3p455w0rd')
        login_as(@user, :scope => :user)
        visit '/users/edit'
    end

    it 'expect to visit users/edit' do
         expect(page).to have_current_path edit_user_registration_path 
    end

end


RSpec.describe "Edit Admin", type: :system do

    before do
        driven_by(:rack_test)
    end

    Admin.destroy_all

    before :each do
        @admin = Admin.create(:email => 'test123@example.com', :password => 'f4k3p455w0rd')
        login_as(@admin, :scope => :admin)
        visit '/admins/edit'
    end

    it 'expect to visit users/edit' do
         expect(page).to have_current_path edit_admin_registration_path 
    end

end


RSpec.describe "Edit Broker", type: :system do

    before do
        driven_by(:rack_test)
    end

    Broker.destroy_all

    before :each do
        @broker = Broker.create(:email => 'test123@example.com', :password => 'f4k3p455w0rd', :approved => true)
        login_as(@broker, :scope => :broker)
        visit '/broker/edit'
    end

    it 'expect to visit users/edit' do
         expect(page).to have_current_path edit_broker_registration_path 
    end

end