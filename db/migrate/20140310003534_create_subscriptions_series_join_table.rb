class CreateSubscriptionsSeriesJoinTable < ActiveRecord::Migration
  def change
    create_join_table :series, :subscriptions do |t|
      # t.index [:series_id, :subscription_id]
      # t.index [:subscription_id, :series_id]
    end
  end
end
