require "rails_helper"

RSpec.describe Post, :type => :model do


  # test associations
	it { should belong_to(:user) }
	it { should belong_to(:relationship) }


	before(:each) do |example|
		@post = FactoryBot.build(:post)
	end

	# test validations
 	it "should be valid when built with all required attributes" do
    expect(@post).to be_valid
  end

  it "should not be valid when built without a title" do
  	@post.title = nil
    expect(@post).not_to be_valid
  end

  it "should not be valid when built without a description" do
  	@post.description = nil
    expect(@post).not_to be_valid
  end




end

