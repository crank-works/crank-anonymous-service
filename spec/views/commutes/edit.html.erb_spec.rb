require 'rails_helper'

RSpec.describe "commutes/edit", :type => :view do
  before(:each) do
    @commute = assign(:commute, Commute.create!())
  end

  it "renders the edit commute form" do
    render

    assert_select "form[action=?][method=?]", commute_path(@commute), "post" do
    end
  end
end
