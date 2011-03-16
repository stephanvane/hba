require 'spec_helper'

describe OwnersController do

  describe 'GET new' do
    it 'should work' do
      get :new

      should respond_with :success
      should render_template :new
      should assign_to :owner
    end
  end
  
  describe 'POST create' do
    it 'creates an owner' do
      owner = Factory.attributes_for :owner
      post :create, :owner => owner
      should redirect_to assigns(:owner)
    end
    
    it 'fails when is should' do
      owner = Owner.new
      post :create, :owner => owner
      should render_template :new
    end
  end
  
  describe 'GET show' do
    before :each do
      @owner = Factory :owner
    end
    
    it 'works' do
      get :show, :id => @owner
      should respond_with :success
      should assign_to :owner
    end
  end
  
  describe 'GET index' do
    it 'works' do
      get :index
      should respond_with :success
      should assign_to :owners
    end
  end
  
  describe 'GET edit' do
    it 'works' do
      @owner = Factory :owner
      get :edit, :id => @owner
      should respond_with :success
      should assign_to :owner
    end
  end
  
  describe 'PUT update' do
    it 'works' do
      @owner = Factory :owner
      put :update, :id => @owner, :owner => @owner
      should redirect_to @owner
    end
  end
  
end
