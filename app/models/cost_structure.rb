class CostStructure < ActiveRecord::Base
  belongs_to :plan

  def business_name
    plan.product.business.name
  end

  def plan_name
    plan.name
  end
end
