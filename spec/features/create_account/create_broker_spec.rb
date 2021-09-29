require 'rails_helper'

RSpec.describe "Broker sign up page", type: :system do

  before do
    driven_by(:rack_test)
  end

  it 'expect to visit broker sign up page' do
    visit  "/broker/sign_up"
    expect(page).to have_current_path(new_broker_registration_path)
  end

end

RSpec.describe Broker do
  before :all do 
    @broker = Broker.new(
      email: "buyer@gmail.com",
      password: "broker123")
  end
  it "expect to save correct email to database" do
    expect(@broker.email).to eq('buyer@gmail.com')
  end

  it "expect to save correct password to database" do
    expect(@broker.password).to eq('broker123')
  end
  
end