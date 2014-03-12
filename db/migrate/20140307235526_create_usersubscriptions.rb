class CreateUsersubscriptions < ActiveRecord::Migration
  def change
    create_table :usersubscriptions do |t|
      t.string :username
      t.references :series

      t.timestamps
	  end
	  
	  add_index :usersubscriptions, :series_id
  end
end
