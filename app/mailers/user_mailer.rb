class UserMailer < ApplicationMailer
    default from: 'no-reply@cateshop.fr'

    def confirmation_email(user)
        @user = user

        @url = 'http://monsite.fr/login'

        mail(to: @user.email, subject: 'Bienvenue chez nous')

    end

end
