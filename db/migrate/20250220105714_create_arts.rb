class CreateArts < ActiveRecord::Migration[8.0]
  def change
    create_table :arts do |t|
      t.string :photo
      t.string :art_name
      t.references :artist, null: false, foreign_key: true
      t.integer :year
      t.string :style
      t.text :description

      t.timestamps
    end
  end
end
