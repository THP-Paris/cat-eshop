class UserMailer < ApplicationMailer
    default from: 'eva.laurent.78@gmail.com'


    def order_confirmation(order)
            @order = order
            @user = order.user
            @url = 'monsite.fr'
            mail(to: @user.email, subject: 'merci pour ta commande bro')
          
    end
end
