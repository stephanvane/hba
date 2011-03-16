class Boat < ActiveRecord::Base
  validates_presence_of :name, :slug, :description
  validates_uniqueness_of :slug
  validates_format_of :slug, :with => /^[\w-]+$/
  
  has_many :photos
  belongs_to :owner
  accepts_nested_attributes_for :photos
  
  mount_uploader :banner, BannerUploader
  
  paginates_per 5
  
  def to_param
    slug
  end
end
