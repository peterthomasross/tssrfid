class Event < ActiveRecord::Base
  attr_accessible :name
  has_many :bookings
  has_many :users, :through => :bookings
end
