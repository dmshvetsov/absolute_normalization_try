class EventDatesController < ApplicationController
  before_action :set_event_date, only: [:show, :edit, :update, :destroy]

  # GET /event_dates
  def index
    @event_dates = EventDate.all
  end

  # GET /event_dates/1
  def show
  end

  # GET /event_dates/new
  def new
    @event_date = EventDate.new
  end

  # GET /event_dates/1/edit
  def edit
  end

  # POST /event_dates
  def create
    @event_date = EventDate.new(event_date_params)

    if @event_date.save
      redirect_to @event_date, notice: 'Event date was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /event_dates/1
  def update
    if @event_date.update(event_date_params)
      redirect_to @event_date, notice: 'Event date was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /event_dates/1
  def destroy
    @event_date.destroy
    redirect_to event_dates_url, notice: 'Event date was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_date
      @event_date = EventDate.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_date_params
      params.require(:event_date).permit(:data)
    end
end
