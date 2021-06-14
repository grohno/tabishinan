class RemoveDefaultRestrictFromPictures < ActiveRecord::Migration[5.2]
  def change
    change_column_default :pictures, :order_number, from: false, to: nil
  end
end
