require 'test_helper'

class MusclesControllerTest < ActionController::TestCase
  setup do
    @muscle = muscles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:muscles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create muscle" do
    assert_difference('Muscle.count') do
      post :create, muscle: { muscle_group_id: @muscle.muscle_group_id, name: @muscle.name }
    end

    assert_redirected_to muscle_path(assigns(:muscle))
  end

  test "should show muscle" do
    get :show, id: @muscle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @muscle
    assert_response :success
  end

  test "should update muscle" do
    patch :update, id: @muscle, muscle: { muscle_group_id: @muscle.muscle_group_id, name: @muscle.name }
    assert_redirected_to muscle_path(assigns(:muscle))
  end

  test "should destroy muscle" do
    assert_difference('Muscle.count', -1) do
      delete :destroy, id: @muscle
    end

    assert_redirected_to muscles_path
  end
end
