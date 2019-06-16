class Admin::ProductsController < ApplicationController
  http_basic_authenticate_with name: 'Jungle', password: 'book'
  def index
    @products = Product.order(id: :desc).all
   
  end

  def new
    @product = Product.new
   
  end
  #method to create products
  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to [:admin, :products], notice: 'Product created!'
    else
      render :new
    end
  end
  #method to delete products
  def destroy
    @product = Product.find params[:id]
    @product.destroy
    redirect_to [:admin, :products], notice: 'Product deleted!'
  end

  private
  #params for the products
  def product_params
    params.require(:product).permit(
      :name,
      :description,
      :category_id,
      :quantity,
      :image,
      :price
    )
  end

end
