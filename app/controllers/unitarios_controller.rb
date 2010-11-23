class UnitariosController < ApplicationController
  def index
    @unitarios = Unitario.all
  end
  
  def show
    @unitario = Unitario.find(params[:id])
  end
  
  def new
    @unitario = Unitario.new
  end
  
  def create
    @unitario = Unitario.new(params[:unitario])
    if @unitario.save
      flash[:notice] = "Successfully created unitario."
      redirect_to @unitario
    else
      render :action => 'new'
    end
  end
  
  def edit
    @unitario = Unitario.find(params[:id])
  end
  
  def update
    @unitario = Unitario.find(params[:id])
    if @unitario.update_attributes(params[:unitario])
      flash[:notice] = "Successfully updated unitario."
      redirect_to @unitario
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @unitario = Unitario.find(params[:id])
    @unitario.destroy
    flash[:notice] = "Successfully destroyed unitario."
    redirect_to unitarios_url
  end
end
