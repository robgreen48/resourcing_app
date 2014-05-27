class PlannedHoursController < ApplicationController
  before_action :set_planned_hour, only: [:show, :edit, :update, :destroy]
  before_action :set_month_view

  # GET /planned_hours
  # GET /planned_hours.json
  def index
    view = session[:month_view]
    @planned_hours = PlannedHour.where(:month => view.beginning_of_day..view.end_of_day)
    @client = Client.all
    @client.sort_by! {|c| c.name}
    @user = User.all
    @user.sort_by! {|u| u.name}
    @new_planned_hour = PlannedHour.new
    @client_fees = ClientFee.where(:month => view.beginning_of_day..view.end_of_day)
  end

  # GET /planned_hours/1
  # GET /planned_hours/1.json
  def show
  end

  # GET /planned_hours/new
  def new
    @planned_hour = PlannedHour.new
  end

  # GET /planned_hours/1/edit
  def edit
  end

  # POST /planned_hours
  # POST /planned_hours.json
  def create
    @planned_hour = PlannedHour.new(planned_hour_params)

    respond_to do |format|
      if @planned_hour.save
        format.html { redirect_to action: "index", notice: 'Planned hour was successfully created.' }
        format.json { render action: 'show', status: :created, location: @planned_hour }
      else
        format.html { render action: 'new' }
        format.json { render json: @planned_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planned_hours/1
  # PATCH/PUT /planned_hours/1.json
  def update
    respond_to do |format|
      if @planned_hour.update(planned_hour_params)
        format.html { redirect_to @planned_hour, notice: 'Planned hour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @planned_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planned_hours/1
  # DELETE /planned_hours/1.json
  def destroy
    @planned_hour.destroy
    respond_to do |format|
      format.html { redirect_to planned_hours_url }
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
    def set_planned_hour
      @planned_hour = PlannedHour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planned_hour_params
      params.require(:planned_hour).permit(:number, :client_id, :user_id, :month)
    end
end
