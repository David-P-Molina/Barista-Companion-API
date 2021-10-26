class BrewMethodsController < ApplicationController
  before_action :set_brew_method, only: [:show, :update, :destroy]

  # GET /brew_methods
  def index
    @brew_methods = BrewMethod.all

    render json: BrewMethodSerializer.new(@brew_methods)
  end

  # GET /brew_methods/1
  def show
    render json: @brew_method.slice(:id, :name, :description, :equipment, :deletable)
  end

  # POST /brew_methods
  def create
    @brew_method = BrewMethod.new(brew_method_params)

    if @brew_method.save
      render json: @brew_method, status: :created, location: @brew_method
    else
      render json: @brew_method.errors.full_messages, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /brew_methods/1
  def update
    if @brew_method.update(brew_method_params)
      render json: @brew_method
    else
      render json: @brew_method.errors.full_messages, status: :unprocessable_entity
    end
  end

  # DELETE /brew_methods/1
  def destroy
    @brew_method.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brew_method
      @brew_method = BrewMethod.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def brew_method_params
      params.require(:brew_method).permit(:name, :description, :equipment, :deletable)
    end
end
