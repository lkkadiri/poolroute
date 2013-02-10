require 'spec_helper'

describe "organizations/index" do
  before(:each) do
    assign(:organizations, [
      stub_model(Organization,
        :name => 1,
        :email => "Email",
        :address => "Address",
        :city => "City",
        :state => "State",
        :country => "Country",
        :phone => "Phone",
        :website => "Website"
      ),
      stub_model(Organization,
        :name => 1,
        :email => "Email",
        :address => "Address",
        :city => "City",
        :state => "State",
        :country => "Country",
        :phone => "Phone",
        :website => "Website"
      )
    ])
  end

  it "renders a list of organizations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
  end
end
