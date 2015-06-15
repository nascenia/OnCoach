require 'test_helper'

class TrainingPlansControllerTest < ActionController::TestCase
  setup do
    @training_plan = training_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:training_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create training_plan" do
    assert_difference('TrainingPlan.count') do
      post :create, training_plan: { name: @training_plan.name }
    end

    assert_redirected_to training_plan_path(assigns(:training_plan))
  end

  test "should show training_plan" do
    get :show, id: @training_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @training_plan
    assert_response :success
  end

  test "should update training_plan" do
    patch :update, id: @training_plan, training_plan: { name: @training_plan.name }
    assert_redirected_to training_plan_path(assigns(:training_plan))
  end

  test "should destroy training_plan" do
    assert_difference('TrainingPlan.count', -1) do
      delete :destroy, id: @training_plan
    end

    assert_redirected_to training_plans_path
  end
end
