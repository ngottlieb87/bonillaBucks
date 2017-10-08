class BonusesToReward < ActiveRecord::Migration[5.1]
  def change
    rename_table :bonuses, :rewards
  end
end
