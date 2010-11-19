class LibrosController < ApplicationController
  def index
    @libros = Libro.all
  end
  
  def show
    @libro = Libro.find(params[:id])
  end
  
  def new
    @libro = Libro.new
  end
  
  def create
    @libro = Libro.new(params[:libro])
    if @libro.save
      flash[:notice] = "Successfully created libro."
      redirect_to @libro
    else
      render :action => 'new'
    end
  end
  
  def edit
    @libro = Libro.find(params[:id])
  end
  
  def update
    @libro = Libro.find(params[:id])
    if @libro.update_attributes(params[:libro])
      flash[:notice] = "Successfully updated libro."
      redirect_to @libro
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @libro = Libro.find(params[:id])
    @libro.destroy
    flash[:notice] = "Successfully destroyed libro."
    redirect_to libros_url
  end
end
