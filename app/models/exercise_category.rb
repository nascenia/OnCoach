class ExerciseCategory < ActiveRecord::Base
  has_ancestry
  has_many :exercises
end
