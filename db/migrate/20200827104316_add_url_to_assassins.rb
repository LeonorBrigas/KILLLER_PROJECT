class AddUrlToAssassins < ActiveRecord::Migration[6.0]
  def change
    add_column :assassins, :url, :string
  end
end
