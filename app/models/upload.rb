class Upload < ActiveRecord::Base
  belongs_to :pool
  belongs_to :route
  belongs_to :organization
  attr_accessible :file_path, :name, :type
end
