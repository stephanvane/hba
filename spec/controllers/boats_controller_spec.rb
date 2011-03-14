require 'spec_helper'

describe BoatsController do

  describe "GET index" do 
    it 'should be successfull' do
      get 'index'
      
      should respond_with :success
    end
  end
  
  describe 'get new' do
    it 'should be successfull' do
      get 'new'
      
      should respond_with :success
    end
  end
  
  describe 'create new' do
    
    describe 'success' do
      
      it 'should create a new boat' do
        lambda do
          post :create, :boat => Factory.attributes_for(:boat)
        end.should change(Boat, :count).by 1
      end
    end
  end
  
  describe 'GET show' do
    it {
      boat = Factory(:boat)
      get :show, :id => boat.slug
      should respond_with :success
    }
  end
end
