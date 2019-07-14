class ProductsController < ApplicationController

  def index
    @products = Product.limit(4)
  end

  def buy
  end
  
  def new
    @product = Product.new
    @address = Prefecture.all
    @product.categories.build
  end
  
  def create
    
    @product = Product.create(products_params)
    redirect_to @product
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def products_params
    params.require(:product).permit(:id, :name, :text,:condition, :limit,:charge,:price,:place,images:[],categories_attributes:[:category_id]).merge(saler_id: current_user.id)
  end


end
