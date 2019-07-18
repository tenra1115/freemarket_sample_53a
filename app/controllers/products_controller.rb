class ProductsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]
  
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
    if @product.saler_id == current_user.id
      redirect_to controller: "products", action: "detail"
    end
  end

  def detail
    @product = Product.find_by(params[current_user.id])
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
    check_user
    @address = Prefecture.all
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
