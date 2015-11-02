class CategoriesController < ApplicationController
  def show
  	cat = params[:category]
  	@category = Category.find_by_tag(cat)
  	if @category.nil?
  		redirect_to '/'
  	end
  end
end
