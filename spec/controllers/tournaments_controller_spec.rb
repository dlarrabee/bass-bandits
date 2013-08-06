require 'spec_helper'

describe TournamentsController do

  describe "#index" do
    before do
      Season.stub(:find).with("1").and_return(double)
      get :index, season_id: 1
    end

    it { should respond_with(:success) }
  end

  describe "#show" do
    before do
      Season.stub(:find).with("10").and_return(double)
      Tournament.stub(:find).with("1").and_return(double)
      get :show, season_id: 10, id: 1
    end

    it { should respond_with(:success) }
  end

end
