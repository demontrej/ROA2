class TecnicasController < ApplicationController
  def index
    @tecnicas = Tecnica.all
  end
  
  def show
    @tecnica = Tecnica.find(params[:id])
  end
  
  def new
    @tecnica = Tecnica.new
  end
  
  def create
    @tecnica = Tecnica.new(params[:tecnica])
    if @tecnica.save
      flash[:notice] = "Successfully created tecnica."
      redirect_to @tecnica
    else
      render :action => 'new'
    end
  end
  
  def edit
    @tecnica = Tecnica.find(params[:id])
  end
  
  def update
    @tecnica = Tecnica.find(params[:id])
    if @tecnica.update_attributes(params[:tecnica])
      flash[:notice] = "Successfully updated tecnica."
      redirect_to @tecnica
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @tecnica = Tecnica.find(params[:id])
    @tecnica.destroy
    flash[:notice] = "Successfully destroyed tecnica."
    redirect_to tecnicas_url
  end
end
