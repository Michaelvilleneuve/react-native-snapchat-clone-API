class AddViewedToSnap < ActiveRecord::Migration[5.0]
  def change
    add_column :snaps, :viewed, :boolean
  end
end
