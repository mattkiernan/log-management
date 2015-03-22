class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to business_path(@product.business)
    else
      render :new
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to @product
    else
      render :edit
    end
  end

  def show
    @product = Product.find(params[:id])
    @plan = @product.plans.new
    @plans = Plan.where(product_id: @product.id)
    @product_feature = ProductFeature.new
  end

  private

  def product_params
    params.require(:product).permit(:name, :business_id, feature_ids:[])
  end
end
