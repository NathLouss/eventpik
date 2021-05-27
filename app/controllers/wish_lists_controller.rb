class WishListsController < ApplicationController

  def show
  end
  
  def update
    @wishlist = WishList.find(params[:id])
    if @wishlist.update(wishlist_params)
      redirect_to activities_path
    else 
      render "pages/home"
    end
  end

  private 
  
  def wishlist_params
    params.require(:wish_list).permit(:address, :radius, :start_at, :end_at)
  end
  
end
