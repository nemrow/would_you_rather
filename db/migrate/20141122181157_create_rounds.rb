class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.string :scenerio_1
      t.string :scenerio_2
      t.string :author

      t.timestamps
    end
  end
end
