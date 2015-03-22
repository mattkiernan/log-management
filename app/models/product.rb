class Product < ActiveRecord::Base
  has_many :plans
  has_many :product_features
  has_many :features, through: :product_features
end
