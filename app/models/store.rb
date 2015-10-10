class Store < ActiveRecord::Base
	def self.get_by_params(params) 
		if !params[:country].nil? && params[:country] != ""		
			products= Country.find(params[:country]).products
		else
			products=Product.all
		end	

		if !params[:cathegory].nil? && params[:cathegory]!=""
			products= products.where(:group => params[:cathegory] )
		end	

		if !params[:search_title].nil? && params[:search_title]!=""
			products=products.where("title LIKE ?", "%#{params[:search_title]}%")
		end

		return products
	end
end