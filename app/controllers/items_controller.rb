class ItemsController < ApplicationController
  before_action :set_category, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = @category.items
  end

  def show
  end

  def new
    @item = @category.items.new
  end

  def create
    @item = @category.items.new(item_params)

    if @item.save
      redirect_to category_path(@category)
    else
      render :new
    end
  end

  def destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_category
    @category = Category.find(params[:category_id])
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name)
  end
end
