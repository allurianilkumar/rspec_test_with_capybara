require "rails_helper"

describe "students/edit" do
  
  # before(:each) do
  #   student = FactoryGirl.build :student
  #   assign(:student, [Student.create!(:sname => "slicer" , :smarks => 100) ])
  # end

  it "renders the form partial" do
    stub_template "students/_form.html.erb" => "This content"
    render
    expect(rendered).to match /This content/
  end

  it 'does NOT display a thumbnail of its image' do
      rendered.should_not have_selector('img.featured_image')
  end

end

