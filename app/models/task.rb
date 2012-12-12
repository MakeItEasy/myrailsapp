class Task < ActiveRecord::Base
  attr_accessible :end_time, :memo, :name, :start_time

  validates :name, :presence => true
end
