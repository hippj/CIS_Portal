class AddLocationToEvents < ActiveRecord::Migration
  # TUTORIAL:  http://stackoverflow.com/questions/10352832/adding-a-new-field-to-rails-model
  def change
    add_column :events, :location, :string
  end
end
