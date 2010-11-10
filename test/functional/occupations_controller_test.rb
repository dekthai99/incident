require 'test_helper'

class OccupationsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:occupations)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_occupation
    assert_difference('Occupation.count') do
      post :create, :occupation => { }
    end

    assert_redirected_to occupation_path(assigns(:occupation))
  end

  def test_should_show_occupation
    get :show, :id => occupations(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => occupations(:one).id
    assert_response :success
  end

  def test_should_update_occupation
    put :update, :id => occupations(:one).id, :occupation => { }
    assert_redirected_to occupation_path(assigns(:occupation))
  end

  def test_should_destroy_occupation
    assert_difference('Occupation.count', -1) do
      delete :destroy, :id => occupations(:one).id
    end

    assert_redirected_to occupations_path
  end
end
