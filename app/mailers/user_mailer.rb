class UserMailer < ApplicationMailer
    default from: 'eva.laurent.78@gmail.com'


    def order_confirmation(order)
            
            @order = order
            @user = order.user
            @url = 'monsite.fr'
            mail(to: @user.email, subject: 'Merci pour ta commande !')
          
    end
end
