class AddCoordinatesToAssassins < ActiveRecord::Migration[6.0]
  def change
    add_column :assassins, :latitude, :float
    add_column :assassins, :longitude, :float
  end
end
