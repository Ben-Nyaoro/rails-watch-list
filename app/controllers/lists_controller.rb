class ListsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  # routes to #index
  def index
		# @lists = List.all
		@lists = policy_scope(List)
	end

  # routes to #show
  def show
	end

# routes to #new
  def new
		@list = List.new
    authorize @list
	end

  # routes to #create
  def create
		@list = List.create(list_params)
    @list.user = current_user
    authorize @list

    if @list.save
			redirect_to list_path(@list), notice: "List was created successfully"
		else
			render :new, status: :unprocessable_entity
		end
	end

  def edit
	end

  def update
    if @list.update(list_params)
      redirect_to list_path(@list), notice: "List was updated sucessfully"
    else
      render :edit, status: :unprocessable_entity
    end   
  end

  # routes to #destroy
  def destroy
    @list.destroy
    redirect_to lists_path, notice: "List was deleted sucessfully"
  end

  private

  def set_list
		@list = List.find(params[:id])
    authorize @list
	end

  def list_params
		params.require(:list).permit(:name, :photo)
	end
end
