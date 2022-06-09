class OrdersController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:create]


  def show
    puts "*"*50
    puts params 
    puts "*"*50
    @order = Order.find(params[:id])
    puts "*"*50
    puts params 
    puts "*"*50
 
  end 


  def new
    @order = Order.new

  end

  def create
    @cart = current_user.cart
    puts "*"*50
    puts params
    puts "*"*50

    order = Order.create(
      'user_id' => current_user.id
    )
    @order = Order.where(user_id: current_user.id)
  
    puts "*"*40
    puts params 
    redirect_to order_path(order.id)
    

 
  end

  private

  def order_params
    params.require(:order).permit(:user_id)
  end



end
