class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :category
      t.integer :year
      t.text :description

      t.timestamps
    end
  end
end
