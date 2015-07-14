class TargetedMuscle < ActiveRecord::Base
  belongs_to :muscle
  belongs_to :exercise

  scope :primary, -> {where :primary => true}
  scope :secondary, -> {where :primary => false}
end
