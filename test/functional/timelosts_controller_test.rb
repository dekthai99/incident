require 'test_helper'

class TimelostsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:timelosts)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_timelost
    assert_difference('Timelost.count') do
      post :create, :timelost => { }
    end

    assert_redirected_to timelost_path(assigns(:timelost))
  end

  def test_should_show_timelost
    get :show, :id => timelosts(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => timelosts(:one).id
    assert_response :success
  end

  def test_should_update_timelost
    put :update, :id => timelosts(:one).id, :timelost => { }
    assert_redirected_to timelost_path(assigns(:timelost))
  end

  def test_should_destroy_timelost
    assert_difference('Timelost.count', -1) do
      delete :destroy, :id => timelosts(:one).id
    end

    assert_redirected_to timelosts_path
  end
end
