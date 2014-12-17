require "rails_helper"

RSpec.describe CommutesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/commutes").to route_to("commutes#index")
    end

    it "routes to #new" do
      expect(:get => "/commutes/new").to route_to("commutes#new")
    end

    it "routes to #show" do
      expect(:get => "/commutes/1").to route_to("commutes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/commutes/1/edit").to route_to("commutes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/commutes").to route_to("commutes#create")
    end

    it "routes to #update" do
      expect(:put => "/commutes/1").to route_to("commutes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/commutes/1").to route_to("commutes#destroy", :id => "1")
    end

  end
end
