class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :category
      t.string :title
      t.string :description
      t.string :location
      t.references :series

      t.timestamps
    end
	
	add_index :events, :series_id
  end
end
