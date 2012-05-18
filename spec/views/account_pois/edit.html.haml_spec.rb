require 'spec_helper'

describe "account_pois/edit" do
  before(:each) do
    @account_poi = assign(:account_poi, stub_model(AccountPoi,
      :id => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit account_poi form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => account_pois_path(@account_poi), :method => "post" do
      assert_select "input#account_poi_id", :name => "account_poi[id]"
      assert_select "input#account_poi_name", :name => "account_poi[name]"
    end
  end
end
