class User < ActiveRecord::Base
  attr_accessible :forename
  has_many :bookings
  has_many :events, :through => :bookings
end
