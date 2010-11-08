require 'test_helper'

class OasControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Oa.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Oa.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Oa.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to oa_url(assigns(:oa))
  end
  
  def test_edit
    get :edit, :id => Oa.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Oa.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Oa.first
    assert_template 'edit'
  end

  def test_update_valid
    Oa.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Oa.first
    assert_redirected_to oa_url(assigns(:oa))
  end
  
  def test_destroy
    oa = Oa.first
    delete :destroy, :id => oa
    assert_redirected_to oas_url
    assert !Oa.exists?(oa.id)
  end
end
