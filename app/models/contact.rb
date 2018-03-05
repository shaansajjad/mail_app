class Contact < MailForm::Base

attribute :name,  :validate => true
attribute :email,  :validate => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
attribute :message,  :validate => true


def headers 
  {
    :subject  =>"Contact Form"
    :to       =>"sajjadiu@iul.ac.in"
    :from     =>%("#{name}" <#{email}>)
   }


	end


end