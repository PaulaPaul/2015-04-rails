class AddCurrentStepToWizmodel < ActiveRecord::Migration
  def change
    add_column :wizmodels, :current_step, :string
  end
end
