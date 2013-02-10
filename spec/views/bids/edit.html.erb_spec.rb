require 'spec_helper'

describe "bids/edit" do
  before(:each) do
    @bid = assign(:bid, stub_model(Bid,
      :auction => nil,
      :amount => 1.5
    ))
  end

  it "renders the edit bid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bids_path(@bid), :method => "post" do
      assert_select "input#bid_auction", :name => "bid[auction]"
      assert_select "input#bid_amount", :name => "bid[amount]"
    end
  end
end
