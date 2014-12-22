class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.text :scenerio_1
      t.text :scenerio_2
      t.string :author
      t.string :email

      t.timestamps
    end
  end
end
