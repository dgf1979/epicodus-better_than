class VotesController < ApplicationController
  before_action :set_category, only: [:new, :create, :index, :show, :edit, :update, :destroy]

  def create
    @vote = @category.votes.new(vote_params)

    if @vote.save
      flash[:notice] = "Thanks for your vote!"

    else

      flash[:alert] = "Vote failed!"

    end
    redirect_to category_path(@category)

  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_category
    @category = Category.find(params[:category_id])
  end

  def vote_params
    params.require(:vote).permit(:category_id, :user_id, :voted_up_item_id, :voted_down_item_id).merge(user_id: current_auth.user.id)
  end
end
