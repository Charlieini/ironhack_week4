class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.references :concert, index: true

      t.timestamps null: false
    end
  end
end
