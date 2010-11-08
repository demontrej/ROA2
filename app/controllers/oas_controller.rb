class OasController < ApplicationController
  def index
    @oas = Oa.all
  end
  
  def show
    @oa = Oa.find(params[:id])
  end
  
  def new
    @oa = Oa.new
  end
  
  def create
    @oa = Oa.new(params[:oa])
    if @oa.save
      flash[:notice] = "Successfully created oa."
      redirect_to @oa
    else
      render :action => 'new'
    end
  end
  
  def edit
    @oa = Oa.find(params[:id])
  end
  
  def update
    @oa = Oa.find(params[:id])
    if @oa.update_attributes(params[:oa])
      flash[:notice] = "Successfully updated oa."
      redirect_to @oa
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @oa = Oa.find(params[:id])
    @oa.destroy
    flash[:notice] = "Successfully destroyed oa."
    redirect_to oas_url
  end
end
