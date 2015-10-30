class RolesController < ApplicationController
  def index
    @roles = Role.all
  end

  def show
    @role = Role.find(params[:id])
  end

  def new_form
  end

  def create_row
    p = Role.new
    p.character_name = params[:character_name]
    p.movie_id = params[:movie_id]
    p.actor_id = params[:actor_id]
    p.save

    redirect_to("http://localhost:3000/roles")
  end

  def edit_form
    @role = Role.find_by({:id=>params[:id]})
  end

  def update_row
    p = Role.find_by({:id=>params[:id]})
    p.character_name = params[:character_name]
    p.movie_id = params[:movie_id]
    p.actor_id = params[:actor_id]
    p.save
    redirect_to("http://localhost:3000/roles")
  end

  def destroy
    p= Role.find(params[:id])
    p.destroy
       redirect_to("http://localhost:3000/roles")
  end
end
