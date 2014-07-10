require 'rails_helper'
require 'spec_helper'
# require 'test/unit'
 
 describe 'students/show.html.erb' do
  
   # before do
   #  student = FactoryGirl.build :student
   #  assign(:widgets, [Student.create!(:sname => "slicer" , :smarks => 100) ])
   #  render 
   # end
  
  it "infers the controller path" do
    expect(controller.request.path_parameters[:controller]).to eq("students")
    expect(controller.controller_path).to eq("students")

  end
  
  it "infers the controller action" do
    expect(controller.request.path_parameters[:action]).to eq("show")
  end

  # it "to create a student" do
  #   student = FactoryGirl.build :student
  #   assign(:student, [Student.create!(:sname => "slicer" , :smarks => 100) ])
  #   render text: " student show happliy"
  # end

end
