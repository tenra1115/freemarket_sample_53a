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
    @user = User.find(current_user.id)
    @product = Product.find(params[:id])
    if @product.saler_id == @user.id
      redirect_to controller: "products", action: "detail"
    end
  end

  def detail
    @user = User.find(current_user.id)
    @product = Product.find_by(params[current_user.id])
  end

  def edit
    @user = User.find(current_user.id)
    @product = Product.find(params[:id])
  end
  
  def update
    @product = Product.find(params[:id])
  end

  def destroy 
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to users_mypage_path
  end 


  private

  def products_params

    params.require(:product).permit(:name, :text,:condition, :limit,:charge,:price,:place,images:[],categories_attributes:[:category_id,:category_name]).merge(saler_id: current_user.id)
  end
end
