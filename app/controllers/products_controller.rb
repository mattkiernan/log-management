class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to businesses_path
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
    @plan = @product.plans.new
    @plans = @product.plans
  end

  private

  def product_params
    params.require(:product).permit(:name, :business_id)
  end
end
