require 'test_helper'

class TrainingSessionsControllerTest < ActionController::TestCase
  setup do
    @training_session = training_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:training_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create training_session" do
    assert_difference('TrainingSession.count') do
      post :create, training_session: { day: @training_session.day, exercise_plan_id: @training_session.exercise_plan_id, training_plan_id: @training_session.training_plan_id }
    end

    assert_redirected_to training_session_path(assigns(:training_session))
  end

  test "should show training_session" do
    get :show, id: @training_session
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @training_session
    assert_response :success
  end

  test "should update training_session" do
    patch :update, id: @training_session, training_session: { day: @training_session.day, exercise_plan_id: @training_session.exercise_plan_id, training_plan_id: @training_session.training_plan_id }
    assert_redirected_to training_session_path(assigns(:training_session))
  end

  test "should destroy training_session" do
    assert_difference('TrainingSession.count', -1) do
      delete :destroy, id: @training_session
    end

    assert_redirected_to training_sessions_path
  end
end
