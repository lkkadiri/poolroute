require 'spec_helper'

describe "uploads/show" do
  before(:each) do
    @upload = assign(:upload, stub_model(Upload,
      :name => "Name",
      :file_path => "File Path",
      :type => "Type",
      :pool => nil,
      :route => nil,
      :organization => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/File Path/)
    rendered.should match(/Type/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
