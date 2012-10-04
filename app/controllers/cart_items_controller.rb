class CartItemsController < ApplicationController
  def create
    @cart = current_cart
    current_cart.cart_items.create!(params[:cart_item])
    flash[:notice] = "Livro added to cart"
    session[:last_product_page] = request.env['HTTP_REFERER'] || products_url    
    render :update do |page|
       #page.insert_html '', :partial => ""
       page.insert_html :bottom, 'selecionado', :text => "1"
    end
  end
end
