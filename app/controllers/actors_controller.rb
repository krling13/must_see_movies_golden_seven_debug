class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find(params[:id])
  end

  def new_form
  end

  def create_row
    p = Actor.new
    p.dob = params[:dob]
    p.name = params[:name]
    p.bio = params[:bio]
    p.image_url = params[:image_url]
    p.save

    redirect_to("http://localhost:3000/actors")
  end

  def edit_form
    @actor = Actor.find_by({:id=>params[:id]})
  end

  def update_row
    p = Actor.find_by({:id=>params[:id]})
    p.dob = params[:dob]
    p.name = params[:name]
    p.bio = params[:bio]
    p.image_url = params[:image_url]
    p.save

    redirect_to("http://localhost:3000/actors")
  end

  def destroy
    p = Actor.find_by({:id=>params[:id]})
    p.destroy
    redirect_to("http://localhost:3000/actors")
  end
end
