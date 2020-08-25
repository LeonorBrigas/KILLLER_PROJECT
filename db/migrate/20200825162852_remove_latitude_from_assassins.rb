class RemoveLatitudeFromAssassins < ActiveRecord::Migration[6.0]
  def change
    remove_column :assassins, :latitude, :integer
    remove_column :assassins, :longitude, :integer

  end
end
