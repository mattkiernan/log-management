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

  def edit
    @plan = Plan.find(params[:id])
    @product = @plan.product
  end

  def update
    @plan= Plan.find(params[:id])
    if @plan.update(plan_params)
      redirect_to @plan
    else
      render :edit
    end
  end

  def show
    @plan = Plan.find(params[:id])
    @product = @plan.product
    @cost_structure = @plan.cost_structures.new
    @cost_structures = CostStructure.where(plan_id: @plan.id)
    @product_features = ProductFeature.where(product_id: @product.id)
  end

  def destroy
    @plan = Plan.find(params[:id])
    @product = @plan.product
    @plan.destroy
    redirect_to @product
  end

  private

  def plan_params
    params.require(:plan).permit(:name, :product_id, :user_limit, :retention_period, feature_ids:[])
  end
end
