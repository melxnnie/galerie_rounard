class CreateArtists < ActiveRecord::Migration[8.0]
  def change
    create_table :artists do |t|
      t.string :photo
      t.string :first_name
      t.string :last_name
      t.string :nationality
      t.integer :birth_year
      t.integer :death_year
      t.text :description

      t.timestamps
    end
  end
end
