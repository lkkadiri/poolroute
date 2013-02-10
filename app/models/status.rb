class Status < ActiveRecord::Base
  attr_accessible :name
  belongs_to :pool
end
