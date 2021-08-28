require 'rails_helper'

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