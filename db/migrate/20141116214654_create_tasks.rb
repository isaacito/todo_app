class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task
      t.boolean :completed
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
