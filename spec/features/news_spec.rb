require 'rails_helper'

RSpec.describe "Visit news page", type: :system do

  before do
    driven_by(:rack_test)
  end

  User.destroy_all
  before :all do
    @user = User.new(:email => 'test123@example.com', :password => 'password123', )
    login_as(@user, :scope => :user)
  end

  it 'expect to visit news page ' do
    visit "/"

    expect(page).to have_current_path(root_path)
  end
end
