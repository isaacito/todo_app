class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task
      t.integer :state, default: 0
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
