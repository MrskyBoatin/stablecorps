class StudentsController < ApplicationController
    before_action :set_student, only: [:show, :edit, :update, :destroy]
  
    def index
    @students = Student.all
  end
	def show
    @student = Student.find{params[:id]}
	end
  
  def index
		@students = Student.all
	end

	
  def new
    @student = Student.new
  end
  
  def create
    @student = Student.new(student_params)
    if @student.save
      StudentMailer.registration_confirmation(@student).deliver 
      redirect_to student_path(@student)
      flash.keep[:notice] = "Thank you for registering for the SCCL Training Program."
    else
      render 'new'
    end 
  end

   private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

  
  def student_params
    params.require(:student).permit(:student_id,:course_id,
      :username, :first_name, :last_name, :year,
      :email, :address, :phone_number, :date_of_birth,
      :school, :year, :program_of_study, :avatar, :avatar_file_name
      )
  end
end
