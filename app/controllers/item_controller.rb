class ItemController < ApplicationController
  def index
    @items = Item.all
    @join_table_item_cart = JoinTableItemsCart.new
  end

  def new
  end

  def create
  end

  def update
  end

  def show
    @item = Item.find(params[:id])
    @join_table_item_cart = JoinTableItemsCart.new

  
  end 
end
