class NewsletterMailser < ApplicationMailer
	def news(user, newsletter)
		@user = user
		@content = newsletter.content
		@title = newsletter.title
		mail(to: @user.email, subject: "#{@title}")
	end
end
