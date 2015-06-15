class TargetedMuscle < ActiveRecord::Base
  belongs_to :muscle
  belongs_to :exercise
end
