class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :horrors, :type, :format
  end
end
