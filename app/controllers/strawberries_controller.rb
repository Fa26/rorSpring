class StrawberriesController < ApplicationController

	def index
		@strawberries=Strawberry.all
	end

	def show
		@straw=Strawberry.find(params[:id])

	end

	def new
		@straw=Strawberry.new
	end

	def edit
		@straw=Strawberry.find(params[:id])
	end

	def create
		@straw = Strawberry.new(product_params)
		#ver por pantalla
		pp @straw

		if @straw.save
			redirect_to strawberries_path, notice: "Tu producto se ha creado correctamente"
		else
			render :new,status: :unprocessable_entity
			
		end
	end



	private

	def product_params
		params.require(:strawberry).permit(:title,:opinion)
	end



end