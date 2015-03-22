class CostStructuresController < ApplicationController
  def index
    @structures = CostStructures.all
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
