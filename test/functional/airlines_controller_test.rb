require 'test_helper'

class AirlinesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:airlines)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_airline
    assert_difference('Airline.count') do
      post :create, :airline => { }
    end

    assert_redirected_to airline_path(assigns(:airline))
  end

  def test_should_show_airline
    get :show, :id => airlines(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => airlines(:one).id
    assert_response :success
  end

  def test_should_update_airline
    put :update, :id => airlines(:one).id, :airline => { }
    assert_redirected_to airline_path(assigns(:airline))
  end

  def test_should_destroy_airline
    assert_difference('Airline.count', -1) do
      delete :destroy, :id => airlines(:one).id
    end

    assert_redirected_to airlines_path
  end
end
