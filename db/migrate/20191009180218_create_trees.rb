class CreateTrees < ActiveRecord::Migration[5.2]
  def change
    create_table :trees do |t|
      t.string :spc_common
      t.string :health
      t.string :longitude
      t.string :latitude
      t.string :tree_id

      t.timestamps
    end
  end
end
