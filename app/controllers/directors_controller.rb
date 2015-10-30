class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show_details
    @director = Director.find(params[:id])
  end

  def new_form
  end

  def create_row
    p=Director.new
    p.dob = params[:dob]
    p.name = params[:name]
    p.bio = params[:bio]
    p.image_url = params[:image_url]
    p.save

    redirect_to("http://localhost:3000/directors")
  end

  def edit_form
    @director = Director.find_by({:id=>params[:id]})
  end

  def update_row
    p = Director.find_by({:id=>params[:id]})
    p.dob = params[:dob]
    p.name = params[:name]
    p.bio = params[:bio]
    p.image_url = params[:image_url]
    p.save
    redirect_to("http://localhost:3000/directors")
    end

  def destroy
   p = Director.find_by({:id=>params[:id]})
   p.destroy
   redirect_to("http://localhost:3000/directors")
  end
end
