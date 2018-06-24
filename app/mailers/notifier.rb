class Notifier < ApplicationMailer

    def user_registered
        mail(to: "massillonf@gmail.com", subject:  "ALERT: A new user has registered.")
    end
end
