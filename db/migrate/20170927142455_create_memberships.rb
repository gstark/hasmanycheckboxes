class CreateMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :memberships do |t|
      t.references :player, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
