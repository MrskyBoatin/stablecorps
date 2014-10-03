ActiveAdmin.register Course do

  
  filter :trainer
  filter :price
  filter :course
  filter :start_time
  filter :end_time
  
  index do
    column :course_name
    column :trainer
    column :price
    column :students_no
    actions
  end

  form do |f|
    f.inputs "course" do
      f.input :trainer, allow_destroy: true, new_record: true do |q|
        q.input :trainer
     end
      f.input :course_name, placeholder: 'Course Name'
      f.input :course_info, placeholder: 'About Course'
      f.input :avatar, :required => false, :as => :file
      f.input :price
      f.input :start_time
      f.input :end_time
    end
    f.actions
  end


  controller do
    def permitted_params
        params.permit(
          :course => [:course_name,
            :price, :start_time, :end_time, :trainer_id, :course_info, :avatar, :avatar_file_name
          ]
        )
    end
  end
end
