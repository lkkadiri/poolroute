class Organization < ActiveRecord::Base
  attr_accessible :address, :city, :country, :email, :name, :phone, :state, :website
  has_many :users
end
