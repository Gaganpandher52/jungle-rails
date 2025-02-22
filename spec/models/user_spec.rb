require 'rails_helper'

RSpec.describe User, type: :model do
  
    it 'should have a password' do
      @user = User.new password_digest:123
      expect(@user.password_digest).to be_present
      @user.errors.full_messages
    end
    it 'should fail is password and confirmation doesn’t match' do
      @user = User.new password_confirmation:'12', password:'1232'
      @user.save
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      
    end
    it 'should fail without a password' do
      @user = User.new password_confirmation: '1232'
      @user.save
      expect(@user.errors[:password]).to include("can't be blank")
      expect(@user.password_digest).to_not be_present
    end






    it 'should have a first name' do

      @user = User.new first_name: 'jh'
      expect(@user.first_name).to be_present
      @user.errors.full_messages
    end
    it 'should have a last name' do

      @user = User.new last_name:'hi'
      expect(@user.last_name).to be_present
      @user.errors.full_messages
    end
    # it 'should have a unique email' do
    #   @user = User.new email:'hi@gmail.com'
    #   expect('hi@gmail.com').to have_attributes(downcase:@user.email)
    #   @user.errors.full_messages
    # end

    it "Email must be unique" do
      @user1 = User.new email:'example@gmail.com'
      @user1.save
      @user2 = User.new email:'example@gmail.com'
      @user2.email.upcase
      @user2.save
      expect(@user1.email == @user2.email).to be true
    end

    it 'should have a password length of 5' do
      @user = User.new password:'22234'
      expect(@user.password.length) >= 5
      @user.errors.full_messages
    end
   

    
  

end
