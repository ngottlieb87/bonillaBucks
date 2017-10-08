class ChangeBonusId < ActiveRecord::Migration[5.1]
  def change
    rename_column :accounts, :bonus_id, :reward_id
  end
end
