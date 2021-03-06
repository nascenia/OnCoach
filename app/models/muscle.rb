class Muscle < ActiveRecord::Base
  belongs_to :muscle_group
  has_many :targeted_muscles
  has_many :exercises, :through => :targeted_muscles

end
