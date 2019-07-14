class ProductsController < ApplicationController
  # before_action :set_product, only: [:show, :index]

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
    @user = User.find(current_user.id)
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def destroy 
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to users_mypage_path
  end 

  

  private

  def products_params

    params.require(:product).permit(:id, :name, :text,:condition, :limit,:charge,:price,:place,images:[],categories_attributes:[:category_id]).merge(saler_id: current_user.id)
  end
end
