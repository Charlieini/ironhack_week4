class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :artist
      t.string :venue
      t.references :city, name: true
      t.date :date
      t.float :price
      t.text :description
      t.string :poster_url

      t.timestamps null: false
    end
  end
end
