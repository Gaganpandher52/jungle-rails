class CategoriesController < ApplicationController

  def index
    @category = Category.all.order(created_at: :desc)
  end

  def show
    @category = Category.find params[:id]
  end
  

end
