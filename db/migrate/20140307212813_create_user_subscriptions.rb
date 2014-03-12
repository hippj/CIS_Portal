class CreateUserSubscriptions < ActiveRecord::Migration
  def change
    create_table :user_subscriptions do |t|
      t.string :username
      t.references :subscriptions, index: true

      t.timestamps
    end
  end
end
