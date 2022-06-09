class OrderController < ApplicationController

  def show
    @order = Order.find(params[:id])
 
  end 


  def new
    @order = Order.new

  end

  def create
    @order = Order.create(params[:id])
    puts "*"*50
    puts params 
    redirect_to order_path
  end




end
