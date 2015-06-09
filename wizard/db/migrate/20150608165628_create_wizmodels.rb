class CreateWizmodels < ActiveRecord::Migration
  def change
    create_table :wizmodels do |t|
      t.string :project_name
      t.text :description
      t.string :cheap_material
      t.string :expensive_material
      t.string :cheap_color
      t.string :expensive_color
      t.integer :current_step

      t.timestamps null: false
    end
  end
end
