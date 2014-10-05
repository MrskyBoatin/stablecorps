class StablecorpsController < ApplicationController
  def index
    @courses = Course.all
  end
end
