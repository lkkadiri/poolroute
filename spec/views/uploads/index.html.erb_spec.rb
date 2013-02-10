require 'spec_helper'

describe "uploads/index" do
  before(:each) do
    assign(:uploads, [
      stub_model(Upload,
        :name => "Name",
        :file_path => "File Path",
        :type => "Type",
        :pool => nil,
        :route => nil,
        :organization => nil
      ),
      stub_model(Upload,
        :name => "Name",
        :file_path => "File Path",
        :type => "Type",
        :pool => nil,
        :route => nil,
        :organization => nil
      )
    ])
  end

  it "renders a list of uploads" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "File Path".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
