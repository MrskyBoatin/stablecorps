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
    @student = Student.new(user_params)
    puts "hey"
    puts params[:student]
    if @student.save
      flash[:notice] = "You have successfully Registered"
      redirect_to root
    else
      render 'new'
    end 
    
  end

  def user_params
    params.require(:student).permit(
      :username, :first_name, :last_name, :year,
      :email, :address, :phone_number, :date_of_birth,
      :school, :year, :program_of_study
      )
  end
end
