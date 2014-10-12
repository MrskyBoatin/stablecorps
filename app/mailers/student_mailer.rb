class StudentMailer < ActionMailer::Base
        default from: 'info@stablecorps.com'
 
        def registration_confirmation(student)
    @student = student
          @url  = 'http://email.stablecorps.com/'
          mail(to: @student.email, subject: 'Stable Corps: Registration Success')
  end
end