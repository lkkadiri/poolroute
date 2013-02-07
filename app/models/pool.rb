class Pool < ActiveRecord::Base
  attr_accessible :address, :city, :country, :description, :name, :phone, :state, :zip
end
