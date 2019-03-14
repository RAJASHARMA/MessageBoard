class UserMailer < ApplicationMailer
	default from: "info@messageboard.com"

	def welcome_email(user)
		@user = user
		@url = "http://localhost:3000/"  # give your web app link
		mail(to: @user.email, subject: "Welcome to MessageBoard")
	end
end
