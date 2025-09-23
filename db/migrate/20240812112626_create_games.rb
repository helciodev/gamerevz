class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :writers
      t.string :cover_image
      t.string :directors
      t.string :production_company
      t.text :description
      t.date :release_date

      t.timestamps
    end
  end
end
