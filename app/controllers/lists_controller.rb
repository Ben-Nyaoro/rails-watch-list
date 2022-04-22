class ListsController < ApplicationController

  before_action :set_list, only: [:show]

  # routes to #index
  def index
		@lists = List.all
	end

  # routes to #show
  def show
	end

# routes to #new
  def new
		@list = List.new
	end

  # routes to #create
  def create
		@list = List.create(list_params)
    if @list.save
			redirect_to list_path(@list)
		else
			render :new, notice: "List was successfully created"
		end
	end

  # routes to #destroy
  def destroy
    @list.destroy
    redirect_to root_path
  end

  private

  def set_list
		@list = List.find(params[:id])
	end

  def list_params
		params.require(:list).permit(:name, :photo)
	end

end
