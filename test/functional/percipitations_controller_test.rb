require 'test_helper'

class PercipitationsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:percipitations)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_percipitation
    assert_difference('Percipitation.count') do
      post :create, :percipitation => { }
    end

    assert_redirected_to percipitation_path(assigns(:percipitation))
  end

  def test_should_show_percipitation
    get :show, :id => percipitations(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => percipitations(:one).id
    assert_response :success
  end

  def test_should_update_percipitation
    put :update, :id => percipitations(:one).id, :percipitation => { }
    assert_redirected_to percipitation_path(assigns(:percipitation))
  end

  def test_should_destroy_percipitation
    assert_difference('Percipitation.count', -1) do
      delete :destroy, :id => percipitations(:one).id
    end

    assert_redirected_to percipitations_path
  end
end
