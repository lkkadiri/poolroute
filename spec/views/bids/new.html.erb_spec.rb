require 'spec_helper'

describe "bids/new" do
  before(:each) do
    assign(:bid, stub_model(Bid,
      :auction => nil,
      :amount => 1.5
    ).as_new_record)
  end

  it "renders new bid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bids_path, :method => "post" do
      assert_select "input#bid_auction", :name => "bid[auction]"
      assert_select "input#bid_amount", :name => "bid[amount]"
    end
  end
end
