class Sequence < ActiveRecord::Base
  has_many :schedules
  has_many :steps, dependent: :destroy
end
