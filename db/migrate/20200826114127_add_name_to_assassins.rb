class AddNameToAssassins < ActiveRecord::Migration[6.0]
  def change
    add_column :assassins, :name, :string
  end
end
