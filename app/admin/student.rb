ActiveAdmin.register Student do
	filter :username
  	filter :email
  	filter :phone_number
  	
	index do
		column :first_name
		column :last_name
		column :username
		column :phone_number
		column :email
		actions
	end

	form do |f|
		f.inputs "student" do
			f.input :first_name, placeholder: 'Your first name please'
			f.input :last_name, placeholder: 'Your last name please'
			f.input :username, placeholder: 'Your username please'
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

	controller do
		def permitted_params
		    params.permit(
		      :student => [:username, :first_name, :last_name, :year,
		      :email, :address, :phone_number, :date_of_birth,
		      :school, :year, :program_of_study]
		    )
		end
	end
end
