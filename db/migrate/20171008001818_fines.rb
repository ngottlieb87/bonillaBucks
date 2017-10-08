class Fines < ActiveRecord::Migration[5.1]
  def change
    create_table(:fines) do |f|
      f.column(:name, :string)
      f.column(:notes, :string)

      f.timestamps()
    end
  end
end
