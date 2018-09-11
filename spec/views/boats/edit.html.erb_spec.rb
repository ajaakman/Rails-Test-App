require 'rails_helper'

RSpec.describe "boats/edit", type: :view do
  before(:each) do
    @boat = assign(:boat, Boat.create!(
      :name => "MyString",
      :owner => "MyString",
      :harbour => "MyString"
    ))
  end

  it "renders the edit boat form" do
    render

    assert_select "form[action=?][method=?]", boat_path(@boat), "post" do

      assert_select "input[name=?]", "boat[name]"

      assert_select "input[name=?]", "boat[owner]"

      assert_select "input[name=?]", "boat[harbour]"
    end
  end
end
