require 'rails_helper'

#RSpec.describe Student, :type => :model do

describe Student do

  #let(:product) { FactoryGirl.create(:product)}     
  #subject { product }

  it "has a valid factory" do
    FactoryGirl.build(:student).should be_valid
  end
  
  
  #its(:product) { should_not be_nill }  


  it "is invalid without name " do
    FactoryGirl.build(:student,:sname => nil).should_not be_valid
  end

  
  
  it "student belongs to collage " do
      t = Student.reflect_on_association(:collage)
      t.macro.should == :belongs_to
  end 


end
