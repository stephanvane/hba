require 'spec_helper'

describe BoatsController do

  describe "GET index" do 
    it 'should be successfull' do
      get 'index'
      
      should respond_with :success
    end
  end
  
  describe 'GET new' do
    it 'should be successfull' do
      get 'new'
      should assign_to(:boat)
      should respond_with :success
    end
  end
  
  describe 'POST new' do
    
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
  
  describe 'GET edit' do
    it {
      boat = Factory(:boat)
      get :edit, :id => boat.slug
    }
  end
  
  describe 'PUT update' do
    it 'should successfully update a boat' do
      boat = Factory(:boat)
      boat.description = 'new description'
      put :update, :id => boat.slug, :boat => boat.attributes
      should redirect_to boat
      
      Boat.find(boat.id).description.should == 'new description'
    end
  end
end
