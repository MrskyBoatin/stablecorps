ActiveAdmin.register Course do
    # permit_params :trainer_id, :course_name, :price, :start_time, :end_time
  
  filter :price
  filter :start_time
  filter :end_time
  
  index do
    column :course_name
    column :trainer
    column :price
    actions
  end

  form do |f|
    f.inputs "course" do
      f.input :course_name, placeholder: 'Course Name'
      f.input :trainer
      f.input :price
      f.input :start_time
      f.input :end_time
      # f.input :course
    end
    f.actions
  end


  controller do
    def permitted_params
        params.permit(
          :course => [:trainer_id, :course_name,
            :price, :start_time, :end_time
          ]
        )
    end
  end
end
