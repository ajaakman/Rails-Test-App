require 'rails_helper'

RSpec.describe "boats/new", type: :view do
  before(:each) do
    assign(:boat, Boat.new(
      :name => "MyString",
      :owner => "MyString",
      :harbour => "MyString"
    ))
  end

  it "renders new boat form" do
    render

    assert_select "form[action=?][method=?]", boats_path, "post" do

      assert_select "input[name=?]", "boat[name]"

      assert_select "input[name=?]", "boat[owner]"

      assert_select "input[name=?]", "boat[harbour]"
    end
  end
end
