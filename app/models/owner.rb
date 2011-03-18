# == Schema Information
# Schema version: 20110315232156
#
# Table name: owners
#
#  id         :integer         not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  email      :string(255)
#

class Owner < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email
  
  has_many :boats
  
  def name
    [first_name, last_name].join(' ')
  end
end
