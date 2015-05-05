class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :owner
      t.date :due

      t.timestamps null: false
    end
  end
end
