class Feature < ActiveRecord::Base
  has_many :product_features
  has_many :plan_features
  has_many :products, through: :product_features
  has_many :plans, through: :plan_features
end
