class CostStructuresController < ApplicationController
  def index
    @structures = CostStructure.all
    @structure = CostStructure.new
  end

  def create
    @structure = CostStructure.new(structure_params)
    if @structure.save
      redirect_to plan_path(params["cost_structure"]["plan_id"])
    else
      render :new
    end
  end

  def edit
    @cost_structure = CostStructure.find(params[:id])
    @plan = @cost_structure.plan
  end

  def update
    @cost_structure = CostStructure.find(params[:id])
    @plan = @cost_structure.plan
    if @cost_structure.update(structure_params)
      redirect_to @plan
    else
      render :edit
    end
  end

  def destroy
    @cost_structure = CostStructure.find(params[:id])
    @plan = @cost_structure.plan
    @cost_structure.destroy
    redirect_to @plan
  end

  private

  def structure_params
    params.require(:cost_structure).permit(:plan_id,
                                           :gb_per_day,
                                           :monthly_cost,
                                           :annual_cost,
                                           :additional_annual_fee,
                                           :perpetual_cost,
                                           :billing_frequency)
  end
end
