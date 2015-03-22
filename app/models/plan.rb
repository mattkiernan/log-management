class Plan < ActiveRecord::Base
  has_many :cost_structures, dependent: :destroy
  has_many :plan_features
  has_many :features, through: :plan_features
end
