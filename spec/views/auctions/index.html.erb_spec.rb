require 'spec_helper'

describe "auctions/index" do
  before(:each) do
    assign(:auctions, [
      stub_model(Auction,
        :pool => nil,
        :status => nil
      ),
      stub_model(Auction,
        :pool => nil,
        :status => nil
      )
    ])
  end

  it "renders a list of auctions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
