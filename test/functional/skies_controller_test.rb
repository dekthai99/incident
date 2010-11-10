require 'test_helper'

class SkiesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:skies)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_sky
    assert_difference('Sky.count') do
      post :create, :sky => { }
    end

    assert_redirected_to sky_path(assigns(:sky))
  end

  def test_should_show_sky
    get :show, :id => skies(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => skies(:one).id
    assert_response :success
  end

  def test_should_update_sky
    put :update, :id => skies(:one).id, :sky => { }
    assert_redirected_to sky_path(assigns(:sky))
  end

  def test_should_destroy_sky
    assert_difference('Sky.count', -1) do
      delete :destroy, :id => skies(:one).id
    end

    assert_redirected_to skies_path
  end
end
