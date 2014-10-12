class AddVotableColToVotes < ActiveRecord::Migration
  def change
    change_table :votes do |t|
      t.belongs_to :votable, :polymorphic => true
    end
  end
end
