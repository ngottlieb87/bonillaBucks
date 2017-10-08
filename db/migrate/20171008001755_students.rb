class Students < ActiveRecord::Migration[5.1]
  def change
    create_table(:students) do |s|
      s.column(:name, :string)
      s.column(:username, :string)
      s.column(:password, :string)
      s.column(:balance, :integer)
      s.column(:class_id, :integer)

      s.timestamps()
    end
  end
end
