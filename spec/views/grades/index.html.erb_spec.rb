require 'spec_helper'

describe "grades/index" do
  before(:each) do
    assign(:grades, [
      stub_model(Grade,
        :name => "Name",
        :captain => "Captain"
      ),
      stub_model(Grade,
        :name => "Name",
        :captain => "Captain"
      )
    ])
  end

  it "renders a list of grades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Captain".to_s, :count => 2
  end
end
