class Lecture < ActiveRecord::Base
  skip_before_filter :verify_authenticity_token, :only => :create
	belongs_to :course
  
#   #...................................................................................
 validates_presence_of :venue, :message =>"can't be blank"  
 validates_presence_of :start_at, :message =>"can't be blank"
 validates_presence_of :end_at, :message =>"can't be blank"
 validates_presence_of :course_id, :message =>" can't be blank"
 validates_presence_of :created_at, :message =>"can't be blank"
 validates_presence_of :updated_at, :message =>"can't be blank"
  
#   #.........................................................
 validates_length_of :venue, :within => 3..255
end
