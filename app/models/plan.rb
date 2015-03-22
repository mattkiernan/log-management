class Plan < ActiveRecord::Base
  has_many :cost_structures, dependent: :destroy
  has_many :plan_features
  has_many :features, through: :plan_features
  belongs_to :product

  def business_name
    product.business.name
  end
end
