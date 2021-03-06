require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe AccountPoisController do

  # This should return the minimal set of attributes required to create a valid
  # AccountPoi. As you add validations to AccountPoi, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AccountPoisController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all account_pois as @account_pois" do
      account_poi = AccountPoi.create! valid_attributes
      get :index, {}, valid_session
      assigns(:account_pois).should eq([account_poi])
    end
  end

  describe "GET show" do
    it "assigns the requested account_poi as @account_poi" do
      account_poi = AccountPoi.create! valid_attributes
      get :show, {:id => account_poi.to_param}, valid_session
      assigns(:account_poi).should eq(account_poi)
    end
  end

  describe "GET new" do
    it "assigns a new account_poi as @account_poi" do
      get :new, {}, valid_session
      assigns(:account_poi).should be_a_new(AccountPoi)
    end
  end

  describe "GET edit" do
    it "assigns the requested account_poi as @account_poi" do
      account_poi = AccountPoi.create! valid_attributes
      get :edit, {:id => account_poi.to_param}, valid_session
      assigns(:account_poi).should eq(account_poi)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new AccountPoi" do
        expect {
          post :create, {:account_poi => valid_attributes}, valid_session
        }.to change(AccountPoi, :count).by(1)
      end

      it "assigns a newly created account_poi as @account_poi" do
        post :create, {:account_poi => valid_attributes}, valid_session
        assigns(:account_poi).should be_a(AccountPoi)
        assigns(:account_poi).should be_persisted
      end

      it "redirects to the created account_poi" do
        post :create, {:account_poi => valid_attributes}, valid_session
        response.should redirect_to(AccountPoi.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved account_poi as @account_poi" do
        # Trigger the behavior that occurs when invalid params are submitted
        AccountPoi.any_instance.stub(:save).and_return(false)
        post :create, {:account_poi => {}}, valid_session
        assigns(:account_poi).should be_a_new(AccountPoi)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        AccountPoi.any_instance.stub(:save).and_return(false)
        post :create, {:account_poi => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested account_poi" do
        account_poi = AccountPoi.create! valid_attributes
        # Assuming there are no other account_pois in the database, this
        # specifies that the AccountPoi created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        AccountPoi.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => account_poi.to_param, :account_poi => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested account_poi as @account_poi" do
        account_poi = AccountPoi.create! valid_attributes
        put :update, {:id => account_poi.to_param, :account_poi => valid_attributes}, valid_session
        assigns(:account_poi).should eq(account_poi)
      end

      it "redirects to the account_poi" do
        account_poi = AccountPoi.create! valid_attributes
        put :update, {:id => account_poi.to_param, :account_poi => valid_attributes}, valid_session
        response.should redirect_to(account_poi)
      end
    end

    describe "with invalid params" do
      it "assigns the account_poi as @account_poi" do
        account_poi = AccountPoi.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        AccountPoi.any_instance.stub(:save).and_return(false)
        put :update, {:id => account_poi.to_param, :account_poi => {}}, valid_session
        assigns(:account_poi).should eq(account_poi)
      end

      it "re-renders the 'edit' template" do
        account_poi = AccountPoi.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        AccountPoi.any_instance.stub(:save).and_return(false)
        put :update, {:id => account_poi.to_param, :account_poi => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested account_poi" do
      account_poi = AccountPoi.create! valid_attributes
      expect {
        delete :destroy, {:id => account_poi.to_param}, valid_session
      }.to change(AccountPoi, :count).by(-1)
    end

    it "redirects to the account_pois list" do
      account_poi = AccountPoi.create! valid_attributes
      delete :destroy, {:id => account_poi.to_param}, valid_session
      response.should redirect_to(account_pois_url)
    end
  end

end
