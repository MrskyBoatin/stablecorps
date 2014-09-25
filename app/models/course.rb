class Course < ActiveRecord::Base
  has_many :students
	has_many :lectures
  belongs_to :trainer
  
  validates_presence_of :course_name, :message =>"can't be blank"
  validates_presence_of :price, :message =>"can't be blank"
	validates_presence_of :start_time, :message =>"can't be blank"
	validates_presence_of :end_time, :message =>"can't be blank"
  validates_presence_of :trainer_id, :message =>" phone number can't be blank"
  validates_presence_of :created_at, :message =>"address  can't be blank"
  validates_presence_of :updated_at, :message =>"Date of birth can't be blank"

  #..................................................................
 validates_numericality_of :price,:greater_than => 0.00 ,:message => "is not a number"
  #...........................................................................
# 	# Paperclip Avatar
#     has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
#   validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
	
end
