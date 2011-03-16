require 'spec_helper'

describe Boat do  
  it 'validates' do
    should validate_presence_of :name
    should validate_presence_of :slug
    should validate_presence_of :description
    should_not allow_value('Bad slug').for(:slug)
    should allow_value('boat-1').for(:slug)
  end
  
  it 'has relations / indices' do
    should have_db_index :slug
    should have_many :photos
    should belong_to :owner
  end
end
