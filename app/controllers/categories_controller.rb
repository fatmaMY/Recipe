class CategoriesController < ApplicationController
	before_action :find_category, only: [:show, :edit, :update, :destroy]

	def index
		@categories = Category.all
	end
	def new
		@category = Category.new
	end
	def create
		@category = Category.new(category_params)
		if @category.save
		
		redirect_to categories_path
	end
	end
	def edit

	end

	def update
		if @category.update
			redirect_to categories_path
		end

	end
	def destroy
		@category.destroy
		redirect_to categories_path
	end
		

	private
	 def find_category
     @category = Category.find(params[:id])
    end
	def category_params
		params.require(:category).permit(:name)
	end


end
