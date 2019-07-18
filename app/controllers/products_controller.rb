class ProductsController < ApplicationController

  before_action :authenticate_user!, only: [:show]

  # before_action :check_user, only:[:edit, :update, :destroy]

  # before_action :set_user, only:[:index, :show]
  
  def index
    @products = Product.limit(4)
  end

  def buy
  end
  
  def new
    @product = Product.new
    @product.build_category
    @address = Prefecture.all
  end
  
  def create
    @product = Product.new(products_params)
    if @product.save
      redirect_to product_path(@product)
    else
      @address = Prefecture.all
      render "new"
    end
  end

  def show
    @product = Product.find(params[:id])
    # @user = Product.where(saler_id : user.id)
    if @product.saler_id == current_user.id
      redirect_to controller: "products", action: "detail"
    end
    # @category = Category.find(params[:id])
  end

  def detail
    # @user = User.find(current_user.id)
    @product = Product.find_by(params[current_user.id])
    @product = Product.find(params[:id])
    # @category = Category.find(params[:id])
  end

  def edit
    # @user = User.find(current_user.id)
    @product = Product.find(params[:id])
    check_user
    @address = Prefecture.all
    # @category = Category.find(params[:id])
    
  end
  
  def update
    
    @product = Product.find(params[:id])
    check_user
    @product.images.purge
    @product.update(products_params)
    redirect_to root_path
    
  end

  def destroy 
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to root_path
  end 


  private

  def products_params
    params.require(:product).permit(:name, :text,:condition, :limit,:charge,:price,:place,images:[],category_attributes:[:category_name]).merge(saler_id: current_user.id)
  end

  def check_user
    unless user_signed_in? && @product.saler_id == current_user.id
      redirect_to root_path
    end
  end
end
