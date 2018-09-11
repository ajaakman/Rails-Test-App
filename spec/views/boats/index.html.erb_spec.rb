require 'rails_helper'

RSpec.describe "boats/index", type: :view do
  before(:each) do
    assign(:boats, [
      Boat.create!(
        :name => "Name",
        :owner => "Owner",
        :harbour => "Harbour"
      ),
      Boat.create!(
        :name => "Name",
        :owner => "Owner",
        :harbour => "Harbour"
      )
    ])
  end

  it "renders a list of boats" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Owner".to_s, :count => 2
    assert_select "tr>td", :text => "Harbour".to_s, :count => 2
  end
end
