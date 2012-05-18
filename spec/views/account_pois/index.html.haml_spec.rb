require 'spec_helper'

describe "account_pois/index" do
  before(:each) do
    assign(:account_pois, [
      stub_model(AccountPoi,
        :id => "Id",
        :name => "Name"
      ),
      stub_model(AccountPoi,
        :id => "Id",
        :name => "Name"
      )
    ])
  end

  it "renders a list of account_pois" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Id".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
