class Booking < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  attr_protected :none
end
