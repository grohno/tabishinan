class AddSearchFieldToGuides < ActiveRecord::Migration[5.2]
  def change
    add_column :guides, :search_field, :text
  end
end
