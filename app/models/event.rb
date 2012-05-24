class Event < ActiveRecord::Base
  attr_protected :none
  has_many :bookings, :dependent => :destroy
  has_many :users, :through => :bookings
end
