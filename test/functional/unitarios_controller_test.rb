require 'test_helper'

class UnitariosControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Unitario.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Unitario.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Unitario.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to unitario_url(assigns(:unitario))
  end
  
  def test_edit
    get :edit, :id => Unitario.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Unitario.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Unitario.first
    assert_template 'edit'
  end

  def test_update_valid
    Unitario.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Unitario.first
    assert_redirected_to unitario_url(assigns(:unitario))
  end
  
  def test_destroy
    unitario = Unitario.first
    delete :destroy, :id => unitario
    assert_redirected_to unitarios_url
    assert !Unitario.exists?(unitario.id)
  end
end
