class ProductOffering < ActiveRecord::Base
  belongs_to :feature, as: :offering
end
