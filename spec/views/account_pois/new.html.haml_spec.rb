require 'spec_helper'

describe "account_pois/new" do
  before(:each) do
    assign(:account_poi, stub_model(AccountPoi,
      :id => "MyString",
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new account_poi form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => account_pois_path, :method => "post" do
      assert_select "input#account_poi_id", :name => "account_poi[id]"
      assert_select "input#account_poi_name", :name => "account_poi[name]"
    end
  end
end
