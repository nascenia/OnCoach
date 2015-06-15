require 'test_helper'

class ExerciseCategoriesControllerTest < ActionController::TestCase
  setup do
    @exercise_category = exercise_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercise_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercise_category" do
    assert_difference('ExerciseCategory.count') do
      post :create, exercise_category: { ancestry: @exercise_category.ancestry, name: @exercise_category.name }
    end

    assert_redirected_to exercise_category_path(assigns(:exercise_category))
  end

  test "should show exercise_category" do
    get :show, id: @exercise_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercise_category
    assert_response :success
  end

  test "should update exercise_category" do
    patch :update, id: @exercise_category, exercise_category: { ancestry: @exercise_category.ancestry, name: @exercise_category.name }
    assert_redirected_to exercise_category_path(assigns(:exercise_category))
  end

  test "should destroy exercise_category" do
    assert_difference('ExerciseCategory.count', -1) do
      delete :destroy, id: @exercise_category
    end

    assert_redirected_to exercise_categories_path
  end
end
