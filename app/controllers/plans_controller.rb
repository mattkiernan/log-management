class PlansController < ApplicationController
  def index
    @plans = Plan.all
    @plan= Plan.new
  end

  def create
    @product = Product.find(params["plan"]["product_id"])
    @plan = Plan.new(plan_params)
    if @plan.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def show
    @plan = Plan.find(params[:id])
    @cost_structure = @plan.cost_structures.new
    @cost_structures = @plan.cost_structures
  end

  private

  def plan_params
    params.require(:plan).permit(:name, :product_id, :user_limit, :retention_period)
  end
end
