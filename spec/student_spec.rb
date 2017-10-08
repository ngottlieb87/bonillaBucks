require("spec_helper")

describe(Student) do
  it{ should have_many(:fines) }
  it{ should have_many(:rewards) }
end
