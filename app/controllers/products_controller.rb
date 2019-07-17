class ProductsController < ApplicationController

  before_action :authenticate_user!, only: [:show]

  # before_action :set_user, only:[:index, :show]
  
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
    @user = User.find(params[:id])
    if @product.saler_id == current_user.id
      redirect_to controller: "products", action: "detail"
    end
    @category = Category.find(params[:id])
  end

  def detail
    @user = User.find(current_user.id)
    @product = Product.find_by(params[current_user.id])
    @product = Product.find(params[:id])
    @category = Category.find(params[:id])
  end

  def edit
    @user = User.find(current_user.id)
    @product = Product.find(params[:id])
    @product.categories.build
    @address = Prefecture.all
    @category = Category.find(params[:id])
  end
  
  def update
    product = Product.find(params[:id])
    product.update(products_params)
    redirect_to root_path
    
  end

  def destroy 
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to root_path
  end 


  private

  def products_params
    params.require(:product).permit(:name, :text,:condition, :limit,:charge,:price,:place,images:[],categories_attributes:[:category_id,:category_name]).merge(saler_id: current_user.id)
  end

  def set_user
    if user_signed_in? && @product.saler_id == current_user.id
      redirect_to controller: "users", action: "address"
    end
  end
end
