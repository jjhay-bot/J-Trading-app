require 'rails_helper'

RSpec.describe User do
  before :all do 
    @user = User.new(
      email: "buyer@gmail.com",
      password: "Admin123")
  end
  it "expect to save correct email to database" do
    expect(@user.email).to eq('buyer@gmail.com')
  end

  it "expect to save correct password to database" do
    expect(@user.password).to eq('Admin123')
  end
end





# RSpec.describe "Create new user:", type: :features do
#   context 'before publication' do  # (almost) plain English
#     it 'cannot have comments' do   #
#       expect { Post.create.comments.create! }.to raise_error(ActiveRecord::RecordInvalid)  # test code
#     end
#   end



  

  # before do
  #   driven_by(:rack_test)
  #   # load "#{Rails.root}/db/seeds.rb" 
  # end

  # before :each  do
  #   # login_as(@user, :scope => :user)
  #   visit  "/users/sign_in"
  # end

  # describe  "Route/path" do
  #   it "should c" do
  #     expect(page).to have_current_path edit_user_path(@user.id)
  #   end
  # end


  # describe  "Expect to visit the correct path" do
  #   it "visit root path" do
  #     expect(page).to have_current_path root_path
  #   end
  # end
  
  # describe  "Expect create new user" do
  #   it "visit admins/sign_in" do
  #     visit '/admins2/sign_in'
  #     expect(page).to new_admin_session_path
  #   end
  
    # it "visit user/sign_up" do
    #   visit '/users/sign_up'
    #   expect(page).to have_current_path new_user_session_path
    # end
  # end






  # describe  "Edit name" do
  #   it "should update name to edited NameX" do
  #     fill_in 'Name', with: 'edited NameX'
  #     click_button 'Save'
  #     expect(User.last.name).to have_content('edited NameX')
  #   end
  # end

  # describe  "Edit balance" do
  #   it "should update balance to 500" do
  #     fill_in 'Balance', with: '500'
  #     click_button 'Save'
  #     expect(User.last.balance).to have_content('500')
  #   end
  # end

  # describe  "redirect on Save" do
  #   it "should redirect users_path" do
  #     fill_in 'Name', with: 'edited NameX'
  #     click_button 'Save'
  #     expect(page).to have_current_path users_path
  #   end
  # end
# end
