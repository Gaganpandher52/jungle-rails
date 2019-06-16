class Admin::CategoriesController < ApplicationController
  http_basic_authenticate_with name: 'Jungle', password: 'book'

  def index    
    @categories = Category.order(id: :desc).all
  end
  
  def new
    @category = Category.new
  end
  #method to create categories
  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end
  #method to delete categories
  def destroy
    @category = Category.find params[:id]
    @category.destroy
    redirect_to [:admin, :categories], notice: 'Category deleted!'
  end
  private
  #params for category
  def category_params
    params.require(:category).permit(
      :name,
      :description,
      :category_id,
      :quantity,
      :image,
      :price
    )
  end
end
