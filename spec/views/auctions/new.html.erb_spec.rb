require 'spec_helper'

describe "auctions/new" do
  before(:each) do
    assign(:auction, stub_model(Auction,
      :pool => nil,
      :status => nil
    ).as_new_record)
  end

  it "renders new auction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => auctions_path, :method => "post" do
      assert_select "input#auction_pool", :name => "auction[pool]"
      assert_select "input#auction_status", :name => "auction[status]"
    end
  end
end
