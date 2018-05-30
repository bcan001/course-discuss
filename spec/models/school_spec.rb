require "rails_helper"

RSpec.describe School, :type => :model do

  # test associations
	# it { should have_many(:posts) }
	it { should have_many(:courses) }


	before(:each) do |example|
		@school = FactoryBot.build(:school)
	end

	# test validations
 	it "should be valid when built with all required attributes" do
    expect(@school).to be_valid
  end

  it "should not be valid when built without a name" do
  	@school.name = nil
    expect(@school).not_to be_valid
  end

  it "should not be valid when built without a city" do
  	@school.city = nil
    expect(@school).not_to be_valid
  end

  it "should not be valid when built without a state" do
  	@school.state = nil
    expect(@school).not_to be_valid
  end




end

