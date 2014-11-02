class Newsletter < ActiveRecord::Base
    validates_presence_of :email, :message =>"Email can't be blank"
end
