class Task < ActiveRecord::Base
  attr_accessible :end_time, :memo, :name, :start_time, :task_date

  validates :name, :presence => true
end
