class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :username
      t.string :provider
      t.string :uid

      t.timestamps null: false
    end
  end
end
