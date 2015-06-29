require 'test_helper'

class TrainingPlansControllerTest < ActionController::TestCase
  setup do
    @training_plan_template = training_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:training_plan_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create training_plan_template" do
    assert_difference('TrainingPlanTemplate.count') do
      post :create, training_plan_template: { name: @training_plan_template.name }
    end

    assert_redirected_to training_plan_path(assigns(:training_plan_template))
  end

  test "should show training_plan_template" do
    get :show, id: @training_plan_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @training_plan_template
    assert_response :success
  end

  test "should update training_plan_template" do
    patch :update, id: @training_plan_template, training_plan_template: { name: @training_plan_template.name }
    assert_redirected_to training_plan_path(assigns(:training_plan_template))
  end

  test "should destroy training_plan_template" do
    assert_difference('TrainingPlanTemplate.count', -1) do
      delete :destroy, id: @training_plan_template
    end

    assert_redirected_to training_plans_path
  end
end
