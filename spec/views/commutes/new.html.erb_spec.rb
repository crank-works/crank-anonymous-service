require 'rails_helper'

RSpec.describe "commutes/new", :type => :view do
  before(:each) do
    assign(:commute, Commute.new())
  end

  it "renders new commute form" do
    render

    assert_select "form[action=?][method=?]", commutes_path, "post" do
    end
  end
end
