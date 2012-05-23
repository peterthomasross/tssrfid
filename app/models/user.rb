class User < ActiveRecord::Base
  attr_protected :none
  has_many :bookings
  has_many :events, :through => :bookings
end

