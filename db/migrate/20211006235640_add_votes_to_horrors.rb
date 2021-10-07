class AddVotesToHorrors < ActiveRecord::Migration[6.1]
  def change
    add_column :horrors, :votes, :string
  end
end
