require 'spec_helper'

describe MembersController do

  describe "#index" do
    before { get :index }

    it { should respond_with(:success) }
  end

  describe "#show" do
    before do
      Member.stub(:find).with("200").and_return(double)
      get :show, id: 200
    end

    it { should respond_with(:success) }
  end
end
