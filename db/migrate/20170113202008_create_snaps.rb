class CreateSnaps < ActiveRecord::Migration[5.0]
  def change
    create_table :snaps do |t|
      t.text :image
      t.integer :recipient_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
