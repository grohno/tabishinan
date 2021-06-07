class CreateGuides < ActiveRecord::Migration[5.2]
  def change
    create_table :guides do |t|
      t.string :title, null: false
      t.text :content
      t.integer :prefecture, default: 0, null: false
      t.text :address
      t.text :note
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
