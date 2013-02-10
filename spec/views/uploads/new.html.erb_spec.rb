require 'spec_helper'

describe "uploads/new" do
  before(:each) do
    assign(:upload, stub_model(Upload,
      :name => "MyString",
      :file_path => "MyString",
      :type => "",
      :pool => nil,
      :route => nil,
      :organization => nil
    ).as_new_record)
  end

  it "renders new upload form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => uploads_path, :method => "post" do
      assert_select "input#upload_name", :name => "upload[name]"
      assert_select "input#upload_file_path", :name => "upload[file_path]"
      assert_select "input#upload_type", :name => "upload[type]"
      assert_select "input#upload_pool", :name => "upload[pool]"
      assert_select "input#upload_route", :name => "upload[route]"
      assert_select "input#upload_organization", :name => "upload[organization]"
    end
  end
end
