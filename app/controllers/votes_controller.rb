class VotesController < ActionController::Base

  def create
    item_up = Item.find(params[:voted_up_item_id])
    item_down = Item.find(params[:voted_down_item_id])

    item_up.vote_by :voter => current_auth.user, :duplicate => true
    item_up.increment!(:rank)

    item_down.vote_by :voter => current_auth.user, :vote => 'bad', :duplicate => true
    item_down.decrement!(:rank)

    redirect_to category_path(params[:category_id])
  end

end
