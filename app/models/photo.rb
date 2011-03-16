class Photo < ActiveRecord::Base
  mount_uploader :file, PhotoUploader
  
  belongs_to :boat
end
