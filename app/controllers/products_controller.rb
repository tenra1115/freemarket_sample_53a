class ProductsController < ApplicationController

  def index
    @products = Product.limit(4)
  end

  def buy
  end
  
  def new
    # @product = Product.where(saler_id: current_user.id)
    @product = Product.new
    @address = Prefecture.all
    @product.categories.build
  end
  
  def create
    
    @product = Product.create(products_params)
    redirect_to @product
    # binding.pry
  end
  
  def show
  end

  private

  def products_params
    params.require(:product).permit(:name, :text,:condition, :limit,:charge,:price,:place,images:[],categories_attributes:[:category_id]).merge(saler_id: current_user.id)
    # binding.pry
  end

  # def set_current_user
  #   @current_user = User.find_by(id: session[:saler_id])
  # end

end
