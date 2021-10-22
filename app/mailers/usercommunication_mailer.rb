class UsercommunicationMailer < ApplicationMailer
    default from: 'notifications@searchpod.com'

    def welcome_email
        @mail_user = params[:user]
        @url = "https://localhost:3000"#site url
        mail(to: @mail_user.email, subject: "Welcome to SearchPod..Greetings from team")
    end
end
