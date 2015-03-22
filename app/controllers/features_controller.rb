class FeaturesController < ApplicationController
  def index
    @features = Feature.all
    @feature = Feature.new
  end

  def create
    @feature = Feature.new(feature_params)
    if @feature.save
      redirect_to features_path
    else
      render :new
    end
  end

  private

  def feature_params
    params.require(:feature).permit(:description)
  end
end
