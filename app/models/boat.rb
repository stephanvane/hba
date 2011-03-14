class Boat < ActiveRecord::Base
  validates_presence_of :name, :slug, :description
  validates_uniqueness_of :slug
  
  def to_param
    slug
  end
end
