require "rails_helper"

RSpec.describe OriginubsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/originubs").to route_to("originubs#index")
    end

    it "routes to #new" do
      expect(:get => "/originubs/new").to route_to("originubs#new")
    end

    it "routes to #show" do
      expect(:get => "/originubs/1").to route_to("originubs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/originubs/1/edit").to route_to("originubs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/originubs").to route_to("originubs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/originubs/1").to route_to("originubs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/originubs/1").to route_to("originubs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/originubs/1").to route_to("originubs#destroy", :id => "1")
    end

  end
end
