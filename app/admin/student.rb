ActiveAdmin.register Student do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :first_name, :last_name, :username, :phone_number, :address, :date_of_birth, :email, :school, :program_of_study, :year, :fees, :course_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
