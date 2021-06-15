class ChangeNotNullToGuide < ActiveRecord::Migration[5.2]
  def change
    change_column_null :guides, :content, false
  end
end
