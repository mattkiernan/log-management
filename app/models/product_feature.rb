class ProductFeature < ActiveRecord::Base
  belongs_to :product
  belongs_to :feature

  def feature_description
    feature = Feature.find(feature_id)
    feature.description
  end
end
