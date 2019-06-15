class RatingsController < ApplicationController


  def create
    # raise "Yay, I'm here!"
    @rating = Rating.new(review_params)
    # @product.ratings.create name: params['description']
    @rating.product_id = params[:product_id]
    @rating.user_id = current_user.id
    
    # redirect_to product_path
    
    if @rating.save
      redirect_to'/products/#{params[:product_id]}'
    else
      p @rating.errors
      redirect_to :back
    end
  end
  
    def review_params
      params.require(:rating).permit(:description, :rating)
    end 

    def destroy
      @rating = Rating.find params[:id]
      @rating.destroy
      redirect_to '/products/#{params[:product_id]}'
    end

end

# def create
#   @review = Review.new(review_params)
#   @review.product_id = params[:product_id]
#   @review.user_id = current_user.id
  
#   # @review.errors.messages

#   if @review.save
#     # review.save
#     redirect_to '/'
#   else
#     p @review.errors
#     redirect_to :back
#   end	

#   # private
# end

# def review_params
#     params.require(:review).permit(:description, :rating)
# end
