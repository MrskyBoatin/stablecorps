class NewsletterMailer < ActionMailer::Base
  default from: 'info@stablecorps.com'
 
  def newsletter_confirmation(newsletter)
          @newsletter = newsletter
          @url  = 'http://email.stablecorps.com/'
          mail(to: @newsletter.email, subject: 'Stable Corps: You have Subscribed to Our newsletter')
  end
end
