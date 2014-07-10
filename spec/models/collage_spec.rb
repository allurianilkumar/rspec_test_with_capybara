require 'rails_helper'

# RSpec.describe Collage, :type => :model do
#pending "add some examples to (or delete) #{__FILE__}"

describe Student do

  it "has a valid factory" do
    FactoryGirl.build(:collage).should be_valid
  end

  it "is invalid without name " do
    FactoryGirl.build(:collage,:cname => nil).should_not be_valid
  end

  it "collage has many students " do
      t = Collage.reflect_on_association(:students)
      t.macro.should == :has_many
  end
end
