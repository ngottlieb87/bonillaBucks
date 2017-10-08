class Accounts < ActiveRecord::Migration[5.1]
  def change
    create_table(:accounts) do |a|
      a.column(:student_id, :integer)
      a.column(:fine_id, :integer)
      a.column(:bonus_id, :integer)

      a.timestamps()
    end
  end
end
