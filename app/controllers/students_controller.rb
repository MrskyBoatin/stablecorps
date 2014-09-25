class StudentsController < ApplicationController
	def index
		@students = Student.all
	end
	
	def show
		@student = Student.find{params[:id]}
	end
	
  def new
    @student = Student.new
  end
  
  def create
    @student = Student.new(params[:student].permit(:first_name,:last_name))
    if @student.save
    flash[:notice] = "You have successfully Registered"
    redirect_to stablecorps_path
    else
      render 'new'
    end 
    
    end
end
