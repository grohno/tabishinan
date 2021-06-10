class RenameMainFlagColumnToPictures < ActiveRecord::Migration[5.2]
  def change
    rename_column :pictures, :main_flag, :order_number
  end
end
