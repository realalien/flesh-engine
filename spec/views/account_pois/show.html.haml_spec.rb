require 'spec_helper'

describe "account_pois/show" do
  before(:each) do
    @account_poi = assign(:account_poi, stub_model(AccountPoi,
      :id => "Id",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Id/)
    rendered.should match(/Name/)
  end
end
