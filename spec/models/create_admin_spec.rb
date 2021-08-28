require 'rails_helper'

RSpec.describe Admin do
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
