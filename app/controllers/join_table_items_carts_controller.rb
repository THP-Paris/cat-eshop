class JoinTableItemsCartsController < ApplicationController

 
  def create
    @item_add = JoinTableItemsCart.add_or_create_cart_item_link(permit_link_params)
    redirect_to root_path, notice: "Article ajouté au panier"
    
  end

  def update
  end

  def destroy
    @item_delete = JoinTableItemsCart.find(params[:id])
    @item_delete.destroy
    redirect_to cart_path
  end

  private

  def permit_link_params
    params.require(:join_table_items_cart).permit(:item_id, :cart_id, :quantity)
  end
end
