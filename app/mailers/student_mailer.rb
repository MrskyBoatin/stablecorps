    class  StudentMailer < ActionMailer::Base  
       
      def registration_confirmation(student)  
        mail(:to => student.email, :subject => "Stable Corps Training Awaiting Payment for your tutorials
", :from => "sboateng@stablecorps.com")  
      end  
    end  