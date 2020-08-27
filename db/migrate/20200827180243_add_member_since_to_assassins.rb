class AddMemberSinceToAssassins < ActiveRecord::Migration[6.0]
  def change
    add_column :assassins, :member_since, :integer
  end
end
