require 'test_helper'

class WildlivesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:wildlives)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_wildlife
    assert_difference('Wildlife.count') do
      post :create, :wildlife => { }
    end

    assert_redirected_to wildlife_path(assigns(:wildlife))
  end

  def test_should_show_wildlife
    get :show, :id => wildlives(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => wildlives(:one).id
    assert_response :success
  end

  def test_should_update_wildlife
    put :update, :id => wildlives(:one).id, :wildlife => { }
    assert_redirected_to wildlife_path(assigns(:wildlife))
  end

  def test_should_destroy_wildlife
    assert_difference('Wildlife.count', -1) do
      delete :destroy, :id => wildlives(:one).id
    end

    assert_redirected_to wildlives_path
  end
end
