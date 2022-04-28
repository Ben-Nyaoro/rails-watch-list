class MoviesController < ApplicationController

  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
		# @movies = Movie.all
    @movies = policy_scope(Movie)
	end

	def show
	end

  def new
		@movie = Movie.new
    authorize @movie
	end

  def create
		@movie = Movie.new(movie_params)
    authorize @movie
		if @movie.save
				redirect_to @movie, notice: 'Movie was successfully created'
		else 
			render :new, status: :unprocessable_entity
		end
	end

  def edit
	end

  def update
		if @movie.update(movie_params)
		   redirect_to @movie, notice: 'Movie was successfully updated'
    else 
			render :edit, status: :unprocessable_entity
    end
	end

  def destroy
		@movie.destroy
		redirect_to movies_path, notice: 'Movie was successfully deleted'
	end

  private

  def movie_params
		params.require(:movie).permit(:title, :overview, :poster_url, :rating)
	end

  def set_movie
    @movie = Movie.find(params[:id])
    authorize @movie
  end
end
