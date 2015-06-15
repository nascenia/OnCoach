class ExerciseCategoriesController < ApplicationController
  before_action :set_exercise_category, only: [:show, :edit, :update, :destroy]

  # GET /exercise_categories
  # GET /exercise_categories.json
  def index
    @exercise_categories = ExerciseCategory.all
  end

  # GET /exercise_categories/1
  # GET /exercise_categories/1.json
  def show
  end

  # GET /exercise_categories/new
  def new
    @exercise_category = ExerciseCategory.new
  end

  # GET /exercise_categories/1/edit
  def edit
  end

  # POST /exercise_categories
  # POST /exercise_categories.json
  def create
    @exercise_category = ExerciseCategory.new(exercise_category_params)

    respond_to do |format|
      if @exercise_category.save
        format.html { redirect_to @exercise_category, notice: 'Exercise category was successfully created.' }
        format.json { render :show, status: :created, location: @exercise_category }
      else
        format.html { render :new }
        format.json { render json: @exercise_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercise_categories/1
  # PATCH/PUT /exercise_categories/1.json
  def update
    respond_to do |format|
      if @exercise_category.update(exercise_category_params)
        format.html { redirect_to @exercise_category, notice: 'Exercise category was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercise_category }
      else
        format.html { render :edit }
        format.json { render json: @exercise_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercise_categories/1
  # DELETE /exercise_categories/1.json
  def destroy
    @exercise_category.destroy
    respond_to do |format|
      format.html { redirect_to exercise_categories_url, notice: 'Exercise category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise_category
      @exercise_category = ExerciseCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercise_category_params
      params.require(:exercise_category).permit(:name)
    end
end
