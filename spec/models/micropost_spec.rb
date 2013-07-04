require 'spec_helper'

describe Micropost do
 let(:user) { FactoryGirl.create(:user) }
  before { @micropost = user.micropost.build(content: "Lorem ipsum", title: "title", year: "1984")

  subject { @micropost }
  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
  it { should respond_to(:title) }
  it { should respond_to(:year) }
  it { should respond_to(:user) }
  
  its(:user) {should == user}
  it { should_be valid}

describe "accessible attributes" do
    it "should not allow access to user_id" do
      expect do
        Micropost.new(user_id: user.id)
      end.should raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end
end

	describe "when user_id is not present" do
    	before { @micropost.user_id = nil }
	    it { should_not be_valid }
	end	
end
end