ActiveAdmin.register Student do
  filter :course
  filter :username
  filter :last_name
  filter :first_name
  filter :fees

  	
	index do
		column :username
		column :first_name
		column :last_name
    column :course
    column :fees
		column :phone_number
		actions
	end

	form do |f|
		f.inputs "student" do
      f.input :course, allow_destroy: true, new_record: true do |q|
        q.input :course
     end
			f.input :first_name, placeholder: 'Your first name please'
        f.input :last_name, placeholder: 'Your last name please'
			f.input :username, placeholder: 'Your username please'
      f.input :avatar, :required => false, :as => :file
			f.input :email, placeholder: 'user@domain.com'
  			f.input :phone_number, placeholder: "Phone Number"
  			f.input :address, placeholder: 'P.O.Box '
  			f.input :school, placeholder: "School"
			f.input :program_of_study, placeholder: "Program Of Study"
  			f.input :year, placeholder: "Year"
			f.input :date_of_birth
		end
		f.actions
	end

#   show do |ad|
#   attributes_table do
#     row :name
#     row :avatar do
#       image_tag(ad.avatar.url(:thumb))
#     end
#   end
#  end
  
	controller do
		def permitted_params
		    params.permit(
          :student => [:course_id, :username, :first_name, :last_name, :year,
		      :email, :address, :phone_number, :date_of_birth,
            :school, :year, :program_of_study, :fees, :avatar, :avatar_file_name]
		    )
		end
	end
  
end
