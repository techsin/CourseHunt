class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
  	cat = params[:category]
  	@category = Category.find_by_tag(cat)
  	if @category.nil?
  		redirect_to '/'
  	end
  end

  def create
    @category = Category.new(category_params)
    
    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end 

  def new
    @category = Category.new
  end
private 

  def category_params
      params.require(:category).permit(:tag)
  end
end
