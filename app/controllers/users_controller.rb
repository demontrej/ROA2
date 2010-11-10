class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Usuario creado exitosamente."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end
  
  def edit
    #@user = current_user
    @user = User.find(params[:id])
  end
  
  def update
    #@user = current_user
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = "Usuario actualizado exitosamente."
      redirect_to root_url
    else
      render :action => 'edit'
    end
  end
end
