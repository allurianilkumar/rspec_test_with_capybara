require "rails_helper"

describe "students/new" do
  
  it "infers the controller path" do
    expect(controller.request.path_parameters[:controller]).to eq("students")
    expect(controller.controller_path).to eq("students")

  end
  
  it "infers the controller action" do
    expect(controller.request.path_parameters[:action]).to eq("new")
  end

end