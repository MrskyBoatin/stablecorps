ActiveAdmin.register Newsletter do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  	form do |f|
      f.inputs "newsletter" do
      f.input :email, placeholder: 'Enter email'
    end
		f.actions
	end
  
  controller do
		def permitted_params
		    params.permit(
          :newsletter => [:email]
		    )
		end
	end
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
