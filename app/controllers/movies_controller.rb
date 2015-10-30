class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new_form
  end

  def create_row
    p=Movie.new
    p.title = params[:title]
    p.year = params[:year]
    p.duration = params[:duration]
    p.description = params[:description]
    p.image_url = params[:image_url]
    p.director_id = params[:director_id]
    p.save

    redirect_to("http://localhost:3000")
  end

  def edit_form
    @movie = Movie.find_by({:id=>params[:id]})
  end

  def update_row
    p=Movie.find_by({:id=>params[:id]})
    p.title = params[:title]
    p.year = params[:year]
    p.duration = params[:duration]
    p.description = params[:description]
    p.image_url = params[:image_url]
    p.director_id = params[:director_id]
    p.save
    redirect_to("http://localhost:3000/movies")
  end

  def destroy
    movie = Movie.find_by({:id=>params[:id]})
    movie.destroy
    redirect_to("http://localhost:3000/directors")
  end
end
