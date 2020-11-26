class CreateCoordinates < ActiveRecord::Migration[6.0]
  def change
    create_table :coordinates do |t|
      t.string :title, null: false
      t.text :concept, null: false
      t.integer :style_id, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
