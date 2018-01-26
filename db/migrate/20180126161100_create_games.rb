class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :name
      t.text :description
      t.float :price
      t.references :user, foreign_key: true
      t.references :console, foreign_key: true

      t.timestamps
    end
  end
end
