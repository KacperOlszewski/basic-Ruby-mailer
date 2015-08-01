class UserMailer < ApplicationMailer
	def welcome_user(variable)
		@user = variable
		@url = 'localhost:3000/users/#{@user.id}'
		mail(to: @user.email, subject: 'Welcome to my awsome site')
	end
end
