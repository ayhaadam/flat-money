class Account < ActiveRecord::Base
  attr_accessible :description, :name, :not_count, :type, :user_id
  validates_presence_of :name
end
