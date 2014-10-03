class TrainersController < ApplicationController
	def index
		@trainers =Trainer.all
	end
	
	def show
		@trainer = Trainer.find{params[:id]}
	end
	def new
    @trainer = Trainer.new
  end
  def create
    @trainer = Trainer.new(params)
    if @trainer.save
  flash[:notice] = "You signed up successfully"
  flash[:color]= "valid"
  else
  flash[:notice] = "Form is invalid"
  flash[:color]= "invalid"
  end
# render nothing: true
    render "admin#show"
end
private
def params
  params.require(:trainer).permit(:first_name, :last_name, :email, :phone_number, :address, :date_of_birth, :email, :avatar, :avatar_file_name)
end
end
end

