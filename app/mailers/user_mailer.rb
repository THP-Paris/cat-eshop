class UserMailer < ApplicationMailer
    default from: 'no-reply@monsite.fr'


    def order_confirmation(order)
            @order = order
            @user = order.user
            @url = 'https://hello.com'
            mail(to: @user.email, subject: 'merci pour ta commande bro')
          
    end
end
