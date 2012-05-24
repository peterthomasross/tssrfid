class User < ActiveRecord::Base
  attr_protected :none
  has_many :bookings, :dependent => :destroy
  has_many :events, :through => :bookings
  
  validates_presence_of :forename, :surname, :address, :postcode, :mobile, :email, :rfid
  
  validates :email, :presence   => true,
                :format     => { :with => email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i},
                :uniqueness => { :case_sensitive => false }
  
  def self.search(search)
    if search
      find(:first, :conditions => {:rfid => search})
    else
      find(:all)
    end
  end
  
  
end

