class SurnamesController < ApplicationController
  before_action :set_surname, only: [:show, :edit, :update, :destroy]

  # GET /surnames
  def index
    @surnames = Surname.all
  end

  # GET /surnames/1
  def show
  end

  # GET /surnames/new
  def new
    @surname = Surname.new
  end

  # GET /surnames/1/edit
  def edit
  end

  # POST /surnames
  def create
    @surname = Surname.new(surname_params)

    if @surname.save
      redirect_to @surname, notice: 'Surname was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /surnames/1
  def update
    if @surname.update(surname_params)
      redirect_to @surname, notice: 'Surname was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /surnames/1
  def destroy
    @surname.destroy
    redirect_to surnames_url, notice: 'Surname was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surname
      @surname = Surname.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def surname_params
      params.require(:surname).permit(:data)
    end
end
