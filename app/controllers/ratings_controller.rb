class RatingsController < ApplicationController
  #method to create ratings
  
  def create
    @rating = Rating.new(review_params)
    @rating.product_id = params[:product_id]
    @rating.user_id = current_user.id
   
    if @rating.save
      redirect_to "/products/#{params[:product_id]}"
    else
      p @rating.errors
      redirect_to :back
    end
  end
  
    def review_params
      params.require(:rating).permit(:description, :rating)
    end 
    #method to destroy ratings
    def destroy
      @rating = Rating.find params[:id]
      @rating.destroy
      redirect_to "/products/#{params[:product_id]}"
    end

end

