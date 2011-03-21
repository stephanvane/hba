# == Schema Information
# Schema version: 20110315232156
#
# Table name: boats
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  slug        :string(255)
#  description :text
#  banner      :string(255)
#  owner_id    :integer
#

class Boat < ActiveRecord::Base
  validates_presence_of :name, :slug, :description
  validates_uniqueness_of :slug
  validates_format_of :slug, :with => /^[\w-]+$/
  
  has_many :photos
  belongs_to :owner
  accepts_nested_attributes_for :photos
  geocoded_by :address
  after_validation :geocode
  
  mount_uploader :banner, BannerUploader
  
  paginates_per 5
  
  def to_param
    slug
  end
end
