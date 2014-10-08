class StudentsController < ApplicationController
	def index
		@students = Student.all
	end
	
	def show
    @student = Student.find{params[:id]}
    @courses = Course.all
	end
	
  def new
    @courses = Course.all
    @student = Student.new
  end
  
  def create
    @courses = Course.all
    @student = Student.new(user_params)
    puts params[:student]
    if @student.save
      redirect_to student_path(@student)
      flash.keep[:notice] = "Thank you for registering for the SCCL Training Program."
     
    else
      render 'new'
    end 
    
  end

  def user_params
    params.require(:student).permit(:course_id,
      :username, :first_name, :last_name, :year,
      :email, :address, :phone_number, :date_of_birth,
      :school, :year, :program_of_study, :avatar, :avatar_file_name
      )
  end
end
