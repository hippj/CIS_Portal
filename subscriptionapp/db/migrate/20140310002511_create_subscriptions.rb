class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :username
      t.references :series, index: true

      t.timestamps
    end
  end
end
