class ItemController < ApplicationController
  def index
    @items = Item.all
  end

  def new
  end

  def create
  end

  def update
  end

  def show
    @item = Item.find(params[:id])
  end 
end
