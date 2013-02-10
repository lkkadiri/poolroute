class Bid < ActiveRecord::Base
  belongs_to :auction
  attr_accessible :amount, :bid_time
end
