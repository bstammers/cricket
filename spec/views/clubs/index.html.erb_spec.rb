require 'spec_helper'

describe "clubs/index" do
  before(:each) do
    assign(:clubs, [
      stub_model(Club,
        :name => "Name",
        :address => "Address",
        :suburb => "Suburb",
        :state => "State"
      ),
      stub_model(Club,
        :name => "Name",
        :address => "Address",
        :suburb => "Suburb",
        :state => "State"
      )
    ])
  end

  it "renders a list of clubs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Suburb".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
  end
end
