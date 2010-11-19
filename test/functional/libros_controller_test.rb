require 'test_helper'

class LibrosControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Libro.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Libro.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Libro.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to libro_url(assigns(:libro))
  end
  
  def test_edit
    get :edit, :id => Libro.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Libro.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Libro.first
    assert_template 'edit'
  end

  def test_update_valid
    Libro.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Libro.first
    assert_redirected_to libro_url(assigns(:libro))
  end
  
  def test_destroy
    libro = Libro.first
    delete :destroy, :id => libro
    assert_redirected_to libros_url
    assert !Libro.exists?(libro.id)
  end
end
