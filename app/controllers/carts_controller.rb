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
end
