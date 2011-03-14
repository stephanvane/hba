require 'spec_helper'

describe Boat do  
  it 'validates' do
    should validate_presence_of :name
    should validate_presence_of :slug
    should validate_presence_of :description
  end
end
