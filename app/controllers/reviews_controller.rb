class ReviewsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    post.reviews.create(reviews_params)
    redirect_to post
  end

  private
  def reviews_params
    params.require(:review).permit(:description, :value).merge(user: current_user)
  end
end
