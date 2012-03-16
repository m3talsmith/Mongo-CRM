require 'spec_helper'

describe 'User' do

  before do
    visit root_path
    click_link 'Register'
    
    fill_in 'name',                   with: 'Test User'
    fill_in 'email',                  with: 'test@example.com'
    fill_in 'password',               with: 'password'
    fill_in 'password_confirmation',  with: 'password'
    
    click_button 'Create User'
  end

  it 'should belong to an organization' do
    @user = User.first
    current_path.should == user_path(@user)
    page.should have_content @user.name
    page.should have_content @user.email
    fill_in 'user_company', with: 'XYZ Corp'
    click_button 'Update'
    page.should have_content 'User Updated'
  end
  
  
end