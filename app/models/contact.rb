class Contact < ActiveRecord::Base
  validates_presence_of :name, :message =>"Name can't be blank"
  validates_presence_of :email, :message =>"Email can't be blank"
  validates_presence_of :subject, :message =>"Subject can't be blank"
  validates_presence_of :message, :message =>"Message can't be blank"
end
