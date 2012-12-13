class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :task_date
      t.datetime :start_time
      t.datetime :end_time
      t.text :memo

      t.timestamps
    end
  end
end
