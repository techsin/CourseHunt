class ListsController < ApplicationController
  def new
  	@list = List.new
  end

  def create
  	data =  params[:lists]

	  @list = List.new(list_params)
	  @list.user = current_user
	  if @list.save 
	    redirect_to '/'  
	  end 
  end

  def show
  	
  end

  private
	
	def list_params
	    params.require(:lists).permit(:title, :category_id)
	end

end
