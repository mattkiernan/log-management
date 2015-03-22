class Product < ActiveRecord::Base
  has_many :plans, dependent: :destroy
  has_many :product_features
  has_many :features, through: :product_features
  belongs_to :business
end
