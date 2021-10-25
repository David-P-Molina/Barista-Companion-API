class RoastersController < ApplicationController
  before_action :set_roaster, only: [:show, :update, :destroy]

  # GET /roasters
  def index
    @roasters = Roaster.all

    render json: RoasterSerializer.new(@roasters)
  end

  # GET /roasters/1
  def show
    render json: @roaster.slice(:name, :id, :description, :year_founded, :deletable)
  end

  # POST /roasters
  def create
    @roaster = Roaster.new(roaster_params)

    if @roaster.save
      render json: @roaster, status: :created, location: @roaster
    else
      render json: @roaster.errors.full_messages, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /roasters/1
  def update
    if @roaster.update(roaster_params)
      render json: @roaster
    else
      render json: @roaster.errors.full_messages, status: :unprocessable_entity
    end
  end

  # DELETE /roasters/1
  def destroy
    @roaster.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roaster
      @roaster = Roaster.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def roaster_params
      params.require(:roaster).permit(:name, :description, :year_founded, :deletable)
    end
end
