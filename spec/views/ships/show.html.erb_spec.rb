require 'rails_helper'

RSpec.describe "ships/show", type: :view do
  before(:each) do
    @ship = assign(:ship, Ship.create!(
      :name => "Name"
    ))
  end

  # it "renders attributes in <p>" do
  #   render
  #   expect(rendered).to match(/Name/)
  # end
end
