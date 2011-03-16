require 'spec_helper'

describe Owner do
  it 'has relations' do
    should validate_presence_of :first_name
    should validate_presence_of :last_name
    should validate_presence_of :email
    
    should have_many :boats
  end
end
