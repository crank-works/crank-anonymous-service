require 'rails_helper'

RSpec.describe "commutes/index", :type => :view do
  before(:each) do
    assign(:commutes, [
      Commute.create!(),
      Commute.create!()
    ])
  end

  it "renders a list of commutes" do
    render
  end
end
