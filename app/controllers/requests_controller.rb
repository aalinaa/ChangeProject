class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]
  include CurrentCart
  before_action :set_cart

  # GET /requests
  # GET /requests.json
  def index
    flash[:title]="Requests"
    @requests=Request.get_by_attr( params[:attr], session[:user_id] )
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
  end

  # GET /requests/new
  def new
    @request = Request.new
  end

  # POST /requests
  # POST /requests.json
  def create
    product=Product.find(params[:product_id])
    @request = Request.new(customer_id: session[:user_id], owner_id: product.user_id, product_id: product.id)

    respond_to do |format|
      if @request.save
        format.html { redirect_to store_url, notice: 'Request was successfully created.' }
        format.js{}
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end
 

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:customer_id, :owner_id, :product_id, :status, :new)
    end
end
