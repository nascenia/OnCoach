require 'test_helper'

class TargetedMusclesControllerTest < ActionController::TestCase
  setup do
    @targeted_muscle = targeted_muscles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:targeted_muscles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create targeted_muscle" do
    assert_difference('TargetedMuscle.count') do
      post :create, targeted_muscle: { exercise_id: @targeted_muscle.exercise_id, muscle_id: @targeted_muscle.muscle_id, primary: @targeted_muscle.primary }
    end

    assert_redirected_to targeted_muscle_path(assigns(:targeted_muscle))
  end

  test "should show targeted_muscle" do
    get :show, id: @targeted_muscle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @targeted_muscle
    assert_response :success
  end

  test "should update targeted_muscle" do
    patch :update, id: @targeted_muscle, targeted_muscle: { exercise_id: @targeted_muscle.exercise_id, muscle_id: @targeted_muscle.muscle_id, primary: @targeted_muscle.primary }
    assert_redirected_to targeted_muscle_path(assigns(:targeted_muscle))
  end

  test "should destroy targeted_muscle" do
    assert_difference('TargetedMuscle.count', -1) do
      delete :destroy, id: @targeted_muscle
    end

    assert_redirected_to targeted_muscles_path
  end
end
