class ReviewsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @review = @list.reviews.build(review_params)
    return redirect_to list_path(@list) if @review.save

    render "lists/show", status: :unprocessable_entity
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
