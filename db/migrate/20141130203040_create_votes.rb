class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :value
      t.integer :round_id
      t.string :ip_address

      t.timestamps
    end
  end
end
