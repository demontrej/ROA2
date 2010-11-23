class PaginasController < ApplicationController
  def index
    @pagina = Pagina.all(:order=> "media_file_name ASC")
  end
  
  def show
    @pagina = Pagina.find(params[:id])
  end
  
  def new
    @pagina = Pagina.new
  end
  
  def create
    #@libro=Libro.find(params[:libro_id])
    @pagina = Pagina.new(params[:pagina])
    if @pagina.save
      flash[:notice] = "Successfully created pagina."
      redirect_to :controller => "libros", :action => "show", :id => @pagina.libro_id
    else
      render :action => 'new'
    end
  end
  
  def edit
    @pagina = Pagina.find(params[:id])
  end
  
  def update
    @pagina = Pagina.find(params[:id])
    if @pagina.update_attributes(params[:pagina])
      flash[:notice] = "Successfully updated pagina."
      redirect_to @pagina
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @pagina = Pagina.find(params[:id])
    @pagina.destroy
    flash[:notice] = "Successfully destroyed pagina."
    redirect_to :controller => "libros", :action => "show", :id => @pagina.libro_id
  end
end
