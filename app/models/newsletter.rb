class Newsletter < ActiveRecord::Base

	def send_to_all_users
		User.all.each {|user| NewsletterMailser.news(user, self).deliver}
	end
end
