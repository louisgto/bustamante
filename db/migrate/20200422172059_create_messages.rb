class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :subject
      t.text :containt
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
