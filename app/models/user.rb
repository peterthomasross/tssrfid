class User < ActiveRecord::Base
  attr_protected :none
  has_many :bookings
  has_many :events, :through => :bookings
  def self.search(search)
    if search
      find(:all, :conditions => ['rfid LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end

