class ProductsController < ApplicationController

  def index
  end

  def buy
  end
  
  def new
    @product = Product.new
    @address = Prefecture.all
    @product.categories.build
  end

  def create
    @product = Product.new(products_params)
    @product.save
  end
  
  def show
  end

  private

  def products_params
    params.require(:product).permit(:name, :text,:condition,:limit,:charge,:price,:place,categories_attributes:[:category_id])
  end
end
