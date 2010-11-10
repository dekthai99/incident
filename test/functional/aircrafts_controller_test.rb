require 'test_helper'

class AircraftsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:aircrafts)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_aircraft
    assert_difference('Aircraft.count') do
      post :create, :aircraft => { }
    end

    assert_redirected_to aircraft_path(assigns(:aircraft))
  end

  def test_should_show_aircraft
    get :show, :id => aircrafts(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => aircrafts(:one).id
    assert_response :success
  end

  def test_should_update_aircraft
    put :update, :id => aircrafts(:one).id, :aircraft => { }
    assert_redirected_to aircraft_path(assigns(:aircraft))
  end

  def test_should_destroy_aircraft
    assert_difference('Aircraft.count', -1) do
      delete :destroy, :id => aircrafts(:one).id
    end

    assert_redirected_to aircrafts_path
  end
end
