require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should not save task without name" do
    task = Task.new
    assert !task.save, "Saved the task without a name"
  end
end
