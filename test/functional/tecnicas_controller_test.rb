require 'test_helper'

class TecnicasControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Tecnica.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Tecnica.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Tecnica.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to tecnica_url(assigns(:tecnica))
  end
  
  def test_edit
    get :edit, :id => Tecnica.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Tecnica.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Tecnica.first
    assert_template 'edit'
  end

  def test_update_valid
    Tecnica.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Tecnica.first
    assert_redirected_to tecnica_url(assigns(:tecnica))
  end
  
  def test_destroy
    tecnica = Tecnica.first
    delete :destroy, :id => tecnica
    assert_redirected_to tecnicas_url
    assert !Tecnica.exists?(tecnica.id)
  end
end
