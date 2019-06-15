class RatingsController < ApplicationController


  def create
    # raise "Yay, I'm here!"
    @rating = Rating.new(rating_params)
    # @product.ratings.create name: params['description']
    @rating.user_id = current_user
    @rating.product_id = params[:product_id]
    # redirect_to product_path
  end

end
