class RemoveCurrentStepFromWizmodels < ActiveRecord::Migration
  def change
    remove_column :wizmodels, :current_step, :integer
  end
end
