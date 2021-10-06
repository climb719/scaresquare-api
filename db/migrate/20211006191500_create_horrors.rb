class CreateHorrors < ActiveRecord::Migration[6.1]
  def change
    create_table :horrors do |t|
      t.string :title
      t.string :type
      t.string :year
      t.string :descriptor

      t.timestamps
    end
  end
end
