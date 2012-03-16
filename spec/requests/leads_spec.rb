require 'spec_helper'

describe "Leads" do

  before do
    @user = Factory.create :user
    login_as @user
  end
  
  it 'should create new lead' do
    click_link 'Leads'
    click_link 'Create Lead'
    current_path.should == new_lead_path
    
    fill_in 'lead_first_name',   with: 'Bill'
    fill_in 'lead_last_name',    with: 'Gates'
    fill_in 'lead_phone',        with: '8005551212'
    fill_in 'lead_email',        with: 'bill@ms.com'
    fill_in 'lead_company',      with: 'Microsoft'
    select 'Web Application', from: 'interested_in'
    click_button 'Create Lead'
    page.should have_content 'New Lead Created'
  end

end
