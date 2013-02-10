class Auction < ActiveRecord::Base
  belongs_to :pool
  belongs_to :status
  attr_accessible :end_time, :start_time
end
