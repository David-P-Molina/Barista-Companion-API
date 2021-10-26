class CoffeeBeansController < ApplicationController
  before_action :set_coffee_bean, only: [:show, :update, :destroy]

  # GET /coffee_beans
  def index
    @coffee_beans = CoffeeBean.all

    render json: CoffeeBeanSerializer.new(@coffee_beans)
  end

  # GET /coffee_beans/1
  def show
    render json: @coffee_bean.slice(:id, :name, :roaster_name, :roaster_id, :roast, :whole_bean, :description, :notes, :blend_type, :region, :processing_method, :drying_method, :deletable)
  end

  # POST /coffee_beans
  def create
    @coffee_bean = CoffeeBean.new(coffee_bean_params)

    if @coffee_bean.save
      render json: @coffee_bean, status: :created, location: @coffee_bean
    else
      render json: @coffee_bean.errors.full_messages, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /coffee_beans/1
  def update
    if @coffee_bean.update(coffee_bean_params)
      render json: @coffee_bean
    else
      render json: @coffee_bean.errors, status: :unprocessable_entity
    end
  end

  # DELETE /coffee_beans/1
  def destroy
    @coffee_bean.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coffee_bean
      @coffee_bean = CoffeeBean.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coffee_bean_params
      params.require(:coffee_bean).permit(:name, :roaster_name, :roaster_id, :roast, :whole_bean, :description, :notes, :blend_type, :region, :processing_method, :drying_method, :deletable)
    end
end
