class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	belongs_to :course
	has_one :trainer
  has_many :lectures 
	
  #--------------------------------------------------------
  # validations for the student model
  
  validates_presence_of :first_name, :message =>"first name can't be blank"
  validates_presence_of :last_name, :message =>"last name can't be blank"
  validates_presence_of :username, :message =>"username can't be blank"
  validates_presence_of :email, :message =>"email can't be blank"
  validates_presence_of :phone_number, :message =>"phone number can't be blank"
  validates_presence_of :address, :message =>" address can't be blank"
  validates_presence_of :date_of_birth, :message => " date of birth can't be blank"
  validates_presence_of :school, :message =>"school can't be blank"
  validates_presence_of :program_of_study, :message => "programe of study  can't be blank"
  validates_presence_of :year,:message => " can't be blank"
  
  #validtes_presence_of :course_id, :message => "cant be blank"
  #...............................
  validates_length_of :first_name, :within => 3..255
  validates_length_of :username, :within => 4..255
  validates_length_of :last_name, :within => 3..255
  validates_length_of :email, :within => 3..255
  
  #...............................................................
  validates_uniqueness_of :username
  validates_uniqueness_of :email
  
  #.......................................................................
 validates_numericality_of :phone_number
  validates_numericality_of :fees, :greater_than => 0
  
  #................................................................................   
 # EMAIL_REGEX = /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i
  validates_confirmation_of :email  
  #validates_format_of :email, :with =>EMAIL_REGEX
  
  #...........................................................................
# 	# Paperclip Avatar
#     has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
#   validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
