class CreateMarbles < ActiveRecord::Migration
  def change
    create_table :marbles do |t|
      t.string :name
      t.string :color
      t.references :person, index: true

      t.timestamps null: false
    end
    add_foreign_key :marbles, :people
  end
end
