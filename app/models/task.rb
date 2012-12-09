class Task < ActiveRecord::Base
  attr_accessible :end_time, :memo, :name, :start_time
end
