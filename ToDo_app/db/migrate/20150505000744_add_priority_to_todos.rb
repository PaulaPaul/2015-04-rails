class AddPriorityToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :priority, :int
  end
end
