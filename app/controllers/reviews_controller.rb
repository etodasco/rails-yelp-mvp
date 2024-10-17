class ReviewsController < ApplicationController
    def new
        @review = Review.new
        @restaurant = Restaurant.find(params[:restaurant_id])
    end

    def create
        @review = Review.new(review_params)
        @restaurant = Restaurant.find(params[:restaurant_id])
        @review.Restaurant = @restaurant
        if @review.save
            puts "Restaurant successfully created!"
            redirect_to restaurant_path(@restaurant)
        else
            render :new, status: :unprocessable_entity
        end
    end
    
    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to restaurant_path(@review.Restaurant), status: :see_other
    end

    private

    def review_params
        params.require(:review).permit(:content)
    end

end
