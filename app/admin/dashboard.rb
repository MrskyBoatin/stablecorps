ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end
    
    columns do
        column do
            panel "Number of course in Progress" do
                section  do  
                    table_for Course.limit(5) do  
                        column :course_name  
                        column :trainer 
                    end  
                    strong { link_to "View All Courses", admin_courses_path }  
                end
            end
        end

        column do 
            panel "Number of trainers" do
                section  do  
                    table_for Trainer.limit(5) do  
                        column :username  
                        column :first_name 
                    end  
                    strong { link_to "View All Trainers", admin_trainers_path }  
                end
            end
        end
    end
    columns do

        column do
            panel "Recently added" do
                section  do  
                    table_for Student.order("created_at desc").limit(5) do  
                        column :username  
                        column :first_name  
                        column :phone_number
                        column :fees
                    end  
                    strong { link_to "View All Students", admin_students_path }  
                end
            end
        end

        column do
          para " Remember to Create Trainers before you create courses, This will enable the trainer's name to appear during the course registration"
        end

    end
    # columns do
    #     column do
    #         panel "Recently added Student(s)"
    #             "Student today"
    #             # ul do
    #             #     Student.all do |student|
    #             #         ahda
    #             #         # li link_to(student.first_name, admin_student_path(student))
    #             #     end
    #             # end
    #         end
    #     end
        
    
    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
