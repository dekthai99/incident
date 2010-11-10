require 'test_helper'

class VisibilitiesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:visibilities)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_visibility
    assert_difference('Visibility.count') do
      post :create, :visibility => { }
    end

    assert_redirected_to visibility_path(assigns(:visibility))
  end

  def test_should_show_visibility
    get :show, :id => visibilities(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => visibilities(:one).id
    assert_response :success
  end

  def test_should_update_visibility
    put :update, :id => visibilities(:one).id, :visibility => { }
    assert_redirected_to visibility_path(assigns(:visibility))
  end

  def test_should_destroy_visibility
    assert_difference('Visibility.count', -1) do
      delete :destroy, :id => visibilities(:one).id
    end

    assert_redirected_to visibilities_path
  end
end
