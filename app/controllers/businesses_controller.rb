class BusinessesController < ApplicationController
  def index
    @businesses = Business.all
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)
    if @business.save
      redirect_to businesses_path
    else
      render :new
    end
  end

  def show
    @business = Business.find(params[:id])
    @new_product = @business.products.new
    @products = Product.where(business_id: @business.id)
  end

  private

  def business_params
    params.require(:business).permit(:name)
  end
end
