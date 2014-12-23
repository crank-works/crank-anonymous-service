require 'rails_helper'

RSpec.describe "commutes/show", :type => :view do
  before(:each) do
    @commute = assign(:commute, Commute.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
