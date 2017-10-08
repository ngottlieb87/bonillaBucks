class Bonuses < ActiveRecord::Migration[5.1]
  def change
    create_table(:bonuses) do |b|
      b.column(:name, :string)
      b.column(:notes, :string)

      b.timestamps()
    end
  end
end
