class StudentsController < ApplicationController

  def index
      respond_to do |format|
      format.html { render :json => "This is the Index Page" }
      #format.json { head :no_content }
    end
  end
  def student
      @student = Student.new
  end

  def new
      @student = Student.new
  end
    
  def create
      #@student = Student.new 
      @student = Student.new(params[:student])
      @student.sname = params[:sname]
      @student.smarks = params[:smarks]
      #
        respond_to do |format|
          if @student.save
           #format.html { redirect_to @student, notice: 'Student was successfully created.' }
           #format.json { render json: @student, status: :created, location: @student }
           flash[:notce] ="Student was  successfully created"
           format.json { render json: @student }
          else
           #format.html { render action: "new" }
           #format.json { render json: @student.errors, status: :unprocessable_entity }
             flash[:error] = "Student not create"
             render :action => 'new'
          end
        end
  end 
  
 
  def show
    @student = Student.find(params[:id])
   # render :json => "Successfully show Student"
  end

  def edit
    @student = Student.find(params[:id])
    #render :json => "Successfully edit Student"
  end
  
  # PUT /students/1
  # PUT /students/1.json
  def update
    @student = Student.find(params[:id])
    @student.sname = params[:student][:sname]
    @student.smarks = params[:student][:smarks]
      respond_to do |format|
        if @student.save
           format.json { render json: @student }
        else
          format.json { render :action => 'new' }
        end
      end
  end
   # def update   
   #  @student = Student.find(params[:id])
   #  #@courses = @student.courses.find(:all)
   #  @student.sname = params[:student][:sname]
   #  @student.smarks = params[:student][:smarks]
   #  respond_to do |format|
   #    if @student.update_attributes(params[:student])
   #      format.html { redirect_to @student, notice: 'Student was successfully updated.' }
   #      format.json { head :no_content }
   #    else
   #      format.html { render action: "edit" }
   #      format.json { render json: @student.errors, status: :unprocessable_entity }
   #    end
   #  end
  
  # def destroy
  #   @student = Student.find(params[:id])
  #   Student.destroy(@student.id)
  #   flash[:notice] = "deleted Student successfully"
  #   respond_to do |format|
  #     format.json { redirect_to  students_url}
  #   end

  # end

  def destroy 
    @student = Student.find(params[:id]).destroy
    flash[:notice] = "deleted Student successfully"
    respond_to do |format|
      format.json {  redirect_to students_url}
     # format.json { redirect_to  students_url}
    end
  end
  
end