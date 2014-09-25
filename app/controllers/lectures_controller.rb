class LecturesController < ApplicationController
	def index
		@courses = Course.all.order('start_time desc')
    @lectures = Lecture.all.order('start_time desc')
	end
	
	def show
		@lecture = Lecture.find{params[:id]}
	end
end
