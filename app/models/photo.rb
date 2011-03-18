# == Schema Information
# Schema version: 20110315232156
#
# Table name: photos
#
#  id      :integer         not null, primary key
#  file    :string(255)
#  boat_id :integer
#

class Photo < ActiveRecord::Base
  mount_uploader :file, PhotoUploader
  
  belongs_to :boat
end
