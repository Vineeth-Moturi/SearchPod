class UsercommunicationMailer < ApplicationMailer
    default from: 'godwillmakeaway647@gmail.com'

    def welcome_email
        @mail_user = params[:username]
        @mail_email = params[:email]
        @url = "https://localhost:3000"#site url
        mail(to: @mail_email, subject: "Welcome to SearchPod..Greetings from team")
    end
end
