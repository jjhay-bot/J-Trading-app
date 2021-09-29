require 'rails_helper'

RSpec.describe "Admin sign up page", type: :system do

  before do
    driven_by(:rack_test)
  end

  it 'expect to visit admin sign up page' do
    visit  "/admins/sign_up"
    expect(page).to have_current_path(new_admin_registration_path)
  end

end

RSpec.describe 'Create Admin account' do
  before :all do 
    @admin = Admin.new(
      email: "buyer@gmail.com",
      password: "Admin123")
  end

  it "expect to save correct email to database" do
    expect(@admin.email).to eq('buyer@gmail.com')
  end

  it "expect to save correct password to database" do
    expect(@admin.password).to eq('Admin123')
  end
end

