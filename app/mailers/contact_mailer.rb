class ContactMailer < ApplicationMailer

	def contact_confirmation(contact)
		@contact = contact
		mail(:subject => "Message Confirmation", :to => contact.email, :from => "No Reply :: Pak Apply ::")
	end

	def contact_backemail(contact)
		@contact = contact
		mail(:subject => contact.contact_sub, :from => contact.email, :to => "ghazi545@gmail.com")
	end

end
