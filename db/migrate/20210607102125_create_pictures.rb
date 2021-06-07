class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.text :image
      t.boolean :main_flag, default: false
      t.references :guide, foreign_key: true, null: false

      t.timestamps
    end
  end
end
