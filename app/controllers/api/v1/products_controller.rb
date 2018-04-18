class Api::V1::ProductsController < ApplicationController
  def index
    render json: Product.all
  end

  def create
    product = Product.new(product_params)
    if product.save
      render json: product
    else
      render json: {errors: product.errors}, status: 422
    end
  end

  private
    def product_params
      params.permit(:name, :price)
    end
end
