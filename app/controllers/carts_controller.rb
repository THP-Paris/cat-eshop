class CartsController < ApplicationController
  include CartsHelper
  before_action :require_login
  before_action :only_current_cart

  def show
    @items_in_cart = JoinTableItemsCart.where(cart_id:current_user.cart.id)
    puts "*"*50
    puts params 
  end

  def create


  end

  def update
  end

  def destroy
  end

  def total 
    @cart = Cart.find_by(user_id: current_user.id)
    @total = 0
    @cart.join_table_cart_items.each do |item|
      @total = @total + (item.item.price * item.quantity)
    end

    @cart.update(total: @total)
  end
end
