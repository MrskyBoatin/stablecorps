class Newsletter < ActiveRecord::Base
   validates_uniqueness_of :email, :message => "You have already registered with this email address"
end
