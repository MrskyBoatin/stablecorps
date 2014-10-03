ActiveAdmin.register Trainer do
  filter :courses
  filter :username
  filter :first_name
  filter :last_name
  filter :phone_number
    
  index do
    column :first_name
    column :last_name
    column :username
    column :phone_number
    actions
  end

  form do |f|
    f.inputs "trainer" do
      f.input :first_name, placeholder: 'Your first name please'
      f.input :last_name, placeholder: 'Your last name please'
      f.input :username, placeholder: 'Your username please'
      f.input :avatar, :required => false, :as => :file
      f.input :email
      f.input :phone_number, placeholder: "Phone Number"
      f.input :address, placeholder: 'P.O.Box '
      f.input :date_of_birth
    end
    f.actions
  end

  controller do
    def permitted_params
        params.permit(
          :trainer => [:first_name, :last_name,
            :username, :phone_number, :address,
            :date_of_birth,:email, :avatar, :avatar_file_name
          ]
        )
    end
  end


end
