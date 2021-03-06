class BookmarksController < ApplicationController

  before_action :set_list, only: [:new, :create]  
  before_action :set_bookmark, only: [:edit, :update, :destroy]

  # routes to #new
  def new
		@bookmark = Bookmark.new
    authorize @bookmark
    authorize @list
	end
  
  # routes to #create
  def create
		@bookmark = Bookmark.new(bookmark_params)
		@bookmark.list = @list
    authorize @bookmark
    @bookmark.user = current_user
    if @bookmark.save
			redirect_to list_path(@list)
		else
			render :new, notice: "Bookmark was successfully created"
		end
	end

def edit
	
end

  # routes to #destroy

  def destroy		
    @bookmark.destroy
    redirect_to list_path(@bookmark.list)
	end

private

  def bookmark_params
		params.require(:bookmark).permit(:comment, :movie_id, :list_id, :user_id)
	end

  def set_bookmark
		@bookmark = Bookmark.find(params[:id])
    authorize @bookmark
	end

  def set_list
    @list = List.find(params[:list_id])
    authorize @list
  end

end
