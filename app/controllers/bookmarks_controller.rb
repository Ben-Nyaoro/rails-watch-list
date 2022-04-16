class BookmarksController < ApplicationController

  before_action :set_list, only: [:new, :create]  
  before_action :set_bookmark, only:[:destroy]

  # routes to #new
  def new
		@bookmark = Bookmark.new
	end
  
  # routes to #create
  def create
		@bookmark = Bookmark.new(bookmark_params)
		@bookmark.list = @list
    if @bookmark.save
			redirect_to list_path(@list)
		else
			render :new, notice: "Bookmark was successfully created"
		end
	end

  # routes to #destroy

  def destroy		
    @bookmark.destroy
    redirect_to bookmark_path(@bookmark.movie)
	end

private

  def bookmark_params
		params.require(:bookmark).permit(:comment, :movie_id, :list_id)
	end

  def set_bookmark
		@bookmark = Bookmark.find(params[:id])
	end

  def set_list
    @list = List.find(params[:list_id])
  end

end
