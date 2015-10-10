class StoreController < ApplicationController
	include CurrentCart
	before_action :set_cart

	skip_before_action :is_registred

  def index
  	@cathegories=Cathegory.all
  	@countries=Country.all	
	@requests=Request.where(customer_id: session[:user_id])
	# Searching by paramethers

	#if all params are nil
	required = [:country, :cathegory, :search_title, :product_id]
	if required.all? {|k| !params.has_key? k}
	  render 'welcome'
	  return
	end

	if !params[:product_id].nil? && params[:product_id]!=""
		@product=Product.find(params[:product_id])
		render 'showProduct'
		return
	end

	@products= Store.get_by_params(params)

  end 

  def showProduct
  	@product=Product.find(params[:product_id])
  	@cathegories=Cathegory.all
  	@countries=Country.all
  	flash[:title]=@product.title
  end
  
end
