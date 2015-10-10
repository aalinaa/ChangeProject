class FeetbacksController < ApplicationController
  before_action :set_feetback, only: [:show, :edit, :update, :destroy]

  # GET /feetbacks
  # GET /feetbacks.json
  def index
    @feetbacks = Feetback.all
  end

  # GET /feetbacks/1
  # GET /feetbacks/1.json
  def show
  end

  # GET /feetbacks/new
  def new
    @feetback = Feetback.new
  end

  # GET /feetbacks/1/edit
  def edit
  end

  # POST /feetbacks
  # POST /feetbacks.json
  def create
    @feetback = Feetback.new(feetback_params)

    respond_to do |format|
      if @feetback.save
        format.html { redirect_to @feetback, notice: 'Feetback was successfully created.' }
        format.json { render :show, status: :created, location: @feetback }
      else
        format.html { render :new }
        format.json { render json: @feetback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feetbacks/1
  # PATCH/PUT /feetbacks/1.json
  def update
    respond_to do |format|
      if @feetback.update(feetback_params)
        format.html { redirect_to @feetback, notice: 'Feetback was successfully updated.' }
        format.json { render :show, status: :ok, location: @feetback }
      else
        format.html { render :edit }
        format.json { render json: @feetback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feetbacks/1
  # DELETE /feetbacks/1.json
  def destroy
    @feetback.destroy
    respond_to do |format|
      format.html { redirect_to feetbacks_url, notice: 'Feetback was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feetback
      @feetback = Feetback.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feetback_params
      params.require(:feetback).permit(:text, :user_id, :mark)
    end
end
