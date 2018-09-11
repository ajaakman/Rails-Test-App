require 'rails_helper'

RSpec.describe "boats/show", type: :view do
  before(:each) do
    @boat = assign(:boat, Boat.create!(
      :name => "Name",
      :owner => "Owner",
      :harbour => "Harbour"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Owner/)
    expect(rendered).to match(/Harbour/)
  end
end
