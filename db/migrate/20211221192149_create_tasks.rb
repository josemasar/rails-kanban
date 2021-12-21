class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.string :project
      t.string :owner
      t.string :status
      t.datetime :required_by
      t.datetime :completed

      t.timestamps
    end
  end
end
