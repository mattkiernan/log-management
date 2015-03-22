class ProductFeaturesController < ApplicationController

  def create
    binding.pry
    @product_features = ProductFeature.new(feature_params)
    if @product_features.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def feature_params
    params.require(:product_feature).permit(
                                            :id,
                                            :product_id,
                                            :feature_id,
                                            product_feature_ids: []
                                           )
  end
end
