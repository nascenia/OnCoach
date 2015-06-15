require 'test_helper'

class ExerciseSessionsControllerTest < ActionController::TestCase
  setup do
    @exercise_session = exercise_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercise_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercise_session" do
    assert_difference('ExerciseSession.count') do
      post :create, exercise_session: { exercise_id: @exercise_session.exercise_id, exercise_plan_id: @exercise_session.exercise_plan_id, intensity: @exercise_session.intensity, num_of_series: @exercise_session.num_of_series, phase: @exercise_session.phase, repetitions: @exercise_session.repetitions, resting_period: @exercise_session.resting_period }
    end

    assert_redirected_to exercise_session_path(assigns(:exercise_session))
  end

  test "should show exercise_session" do
    get :show, id: @exercise_session
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercise_session
    assert_response :success
  end

  test "should update exercise_session" do
    patch :update, id: @exercise_session, exercise_session: { exercise_id: @exercise_session.exercise_id, exercise_plan_id: @exercise_session.exercise_plan_id, intensity: @exercise_session.intensity, num_of_series: @exercise_session.num_of_series, phase: @exercise_session.phase, repetitions: @exercise_session.repetitions, resting_period: @exercise_session.resting_period }
    assert_redirected_to exercise_session_path(assigns(:exercise_session))
  end

  test "should destroy exercise_session" do
    assert_difference('ExerciseSession.count', -1) do
      delete :destroy, id: @exercise_session
    end

    assert_redirected_to exercise_sessions_path
  end
end
