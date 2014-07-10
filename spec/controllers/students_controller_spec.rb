require 'rails_helper'

RSpec.describe StudentsController, :type => :controller do

describe "post create" do
  describe "with valid params" do
    it "creates a new student" do
      request.accept = "application/json"  
      post :create , { :sname => "swami" , :smarks => 32 }
      expect(response.status).to eq(200)
    end
  end
end

describe "get show" do
  describe "to show a student" do
    it "show the created student" do
      request.accept = "application/json"
      @student = FactoryGirl.create(:student)  
      get :show, :id => @student.id
      expect(response.status).to eq(200)    
    end
  end
end

describe "get edit" do
  describe "to edit particular student" do
    it "edit student action" do
      request.accept = "application/json"
      @student = FactoryGirl.create(:student)  
      get :edit, :id => @student.id
      expect(response.status).to eq(200)    
    end
  end
end


describe "put update" do
   describe "to update particular one" do
      it "update student action" do
      request.accept = "application/json"
      @student = FactoryGirl.create(:student) 
      #puts(@student.sname)
      @student.sname = 'update student'
      put :update , :id => @student.id , :student => { :sname => @student.sname, :smarks=> @student.smarks}
      expect(response.status).to eq(200)
      @student.reload
      expect(@student.sname).to eq('update student')
      #if @product.save
       #response.should redirect_to(@product)
      #end

      end
   end
 end


  describe "delete destroy " do
    describe "with valid params" do
      it "delele paticulat student" do
        request.accept = "application/json"
        @student = FactoryGirl.create(:student) 
        #@students = student.count
        delete :destroy, :id => @student.id
        expect(response.status).to eq(302) 
        response.should redirect_to students_url
     end
   end
  end

end
