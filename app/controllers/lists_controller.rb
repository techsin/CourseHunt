class ListsController < ApplicationController

  def new
    @list = List.new
  end

  def edit
  end

  def create

    @list = List.new(title: params[:title])

    @list.category = Category.find(params[:category])

    @list.user = current_user
    if @list.save

      redirect_to '/'
    end
  end

  def show
    @lists = List.find(params[:id])
  end

  private

  def list_params
    params.require(:lists).permit(:title, :category_id)
  end



end
