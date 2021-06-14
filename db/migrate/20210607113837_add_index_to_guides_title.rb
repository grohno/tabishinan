class AddIndexToGuidesTitle < ActiveRecord::Migration[5.2]
  def change
    add_index :guides, :title
  end
end
