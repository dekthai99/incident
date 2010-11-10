require 'test_helper'

class InjuriesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:injuries)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_injury
    assert_difference('Injury.count') do
      post :create, :injury => { }
    end

    assert_redirected_to injury_path(assigns(:injury))
  end

  def test_should_show_injury
    get :show, :id => injuries(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => injuries(:one).id
    assert_response :success
  end

  def test_should_update_injury
    put :update, :id => injuries(:one).id, :injury => { }
    assert_redirected_to injury_path(assigns(:injury))
  end

  def test_should_destroy_injury
    assert_difference('Injury.count', -1) do
      delete :destroy, :id => injuries(:one).id
    end

    assert_redirected_to injuries_path
  end
end
