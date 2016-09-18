class StreetsController < ApplicationController
  before_action :set_street, only: [:show, :edit, :update, :destroy]

  # GET /streets
  def index
    @streets = Street.all
  end

  # GET /streets/1
  def show
  end

  # GET /streets/new
  def new
    @street = Street.new
  end

  # GET /streets/1/edit
  def edit
  end

  # POST /streets
  def create
    @street = Street.new(street_params)

    if @street.save
      redirect_to @street, notice: 'Street was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /streets/1
  def update
    if @street.update(street_params)
      redirect_to @street, notice: 'Street was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /streets/1
  def destroy
    @street.destroy
    redirect_to streets_url, notice: 'Street was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_street
      @street = Street.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def street_params
      params.require(:street).permit(:data)
    end
end
