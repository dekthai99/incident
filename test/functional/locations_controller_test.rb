require 'test_helper'

class LocationsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:locations)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_locations
    assert_difference('Locations.count') do
      post :create, :locations => { }
    end

    assert_redirected_to locations_path(assigns(:locations))
  end

  def test_should_show_locations
    get :show, :id => locations(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => locations(:one).id
    assert_response :success
  end

  def test_should_update_locations
    put :update, :id => locations(:one).id, :locations => { }
    assert_redirected_to locations_path(assigns(:locations))
  end

  def test_should_destroy_locations
    assert_difference('Locations.count', -1) do
      delete :destroy, :id => locations(:one).id
    end

    assert_redirected_to locations_path
  end
end
