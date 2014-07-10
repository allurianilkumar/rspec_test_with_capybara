require 'rails_helper'
require 'spec_helper'
describe "students/index" do

  it "infers the controller path" do
    expect(controller.request.path_parameters[:controller]).to eq("students")
    expect(controller.controller_path).to eq("students")

  end
  
  it "infers the controller action" do
    expect(controller.request.path_parameters[:action]).to eq("index")
  end

  it "should assign stickies" do
    foo = assigns(:students)
    puts "foo = #{foo}"
  end

end




