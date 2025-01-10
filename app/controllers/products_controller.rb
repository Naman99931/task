class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    Product.create(params[:product])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(person_params)
    redirect_to @product
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to action: "index"
  end

  def person_params
    params.expect(product: [ :name ])
  end
end
