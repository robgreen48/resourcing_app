class ClientFeesController < ApplicationController
  before_action :set_client_fee, only: [:show, :edit, :update, :destroy]
  before_action :set_month_view

  # GET /client_fees
  # GET /client_fees.json
  def index
    view = session[:month_view]
    @client_fees = ClientFee.where(:month => view.beginning_of_day..view.end_of_day)
    @client = Client.all
    @client.sort_by! {|c| c.name}
    @new_client_fee = ClientFee.new
  end

  # GET /client_fees/1
  # GET /client_fees/1.json
  def show
  end

  # GET /client_fees/new
  def new
    @client_fee = ClientFee.new
    @client = Client.all
    @client.sort_by! {|c| c.name}
  end

  # GET /client_fees/1/edit
  def edit
  end

  # POST /client_fees
  # POST /client_fees.json
  def create
    @client_fee = ClientFee.new(client_fee_params)

    respond_to do |format|
      if @client_fee.save
        format.html { redirect_to client_fees_path, notice: 'Client fee was successfully created.' }
        format.json { render action: 'show', status: :created, location: @client_fee }
      else
        format.html { render action: 'new' }
        format.json { render json: @client_fee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_fees/1
  # PATCH/PUT /client_fees/1.json
  def update
    respond_to do |format|
      if @client_fee.update(client_fee_params)
        format.html { redirect_to client_fees_path, notice: 'Client fee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @client_fee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_fees/1
  # DELETE /client_fees/1.json
  def destroy
    @client_fee.destroy
    respond_to do |format|
      format.html { redirect_to client_fees_url }
      format.json { head :no_content }
    end
  end

  def set_month_view
    if session[:month_view] == nil
      session[:month_view] = DateTime.new(Time.now.year, Time.now.month, 1, 0, 0, 0, "+00:00")
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_fee
      @client_fee = ClientFee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_fee_params
      params.require(:client_fee).permit(:fee, :client_id, :month)
    end
end
