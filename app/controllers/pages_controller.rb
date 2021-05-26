class PagesController < ApplicationController
  def home
    @wishlist = current_user.wish_list
  end
end
